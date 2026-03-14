#!/bin/bash

# This script simulates the GitHub Actions workflow locally
# Run this in Git Bash or WSL on Windows

set -e

echo "======================================"
echo "Testing Issue Ops Workflow Simulation"
echo "======================================"
echo ""

# Configuration (matching GitHub secrets)
API_USERNAME="admin"
API_PASSWORD="password"
BASE_URL="http://localhost:9090"

# Simulated issue inputs
PATIENT_NAME="John Doe"
GENDER="male"
IDENTIFIER=""
BIRTH_DATE=""

echo "Step 1: Checking if API is accessible..."
if curl -f "$BASE_URL/actuator/health" 2>/dev/null > /dev/null; then
    echo "  ✓ API is healthy"
else
    echo "  ✗ API is not accessible"
    echo "  Please run: cd api && docker-compose up -d"
    exit 1
fi
echo ""

echo "Step 2: Authenticating with FHIR API..."
# Try to login first
LOGIN_RESPONSE=$(curl -s -w "\n%{http_code}" -X POST "$BASE_URL/auth/login" \
    -H "Content-Type: application/json" \
    -d "{\"username\":\"$API_USERNAME\",\"password\":\"$API_PASSWORD\"}")

HTTP_CODE=$(echo "$LOGIN_RESPONSE" | tail -n1)
RESPONSE_BODY=$(echo "$LOGIN_RESPONSE" | sed '$d')

if [ "$HTTP_CODE" = "200" ]; then
    echo "  ✓ Login successful"
    JWT=$(echo "$RESPONSE_BODY" | jq -r '.token')
else
    echo "  ! User doesn't exist, creating..."
    SIGNUP_RESPONSE=$(curl -s -X POST "$BASE_URL/auth/signup" \
        -H "Content-Type: application/json" \
        -d "{\"username\":\"$API_USERNAME\",\"password\":\"$API_PASSWORD\",\"email\":\"automation@fhir.local\"}")
    
    echo "  Signup response: $SIGNUP_RESPONSE"
    
    # Login after signup
    LOGIN_RESPONSE=$(curl -s -X POST "$BASE_URL/auth/login" \
        -H "Content-Type: application/json" \
        -d "{\"username\":\"$API_USERNAME\",\"password\":\"$API_PASSWORD\"}")
    
    JWT=$(echo "$LOGIN_RESPONSE" | jq -r '.token')
    echo "  ✓ User created and authenticated"
fi

if [ -z "$JWT" ] || [ "$JWT" = "null" ]; then
    echo "  ✗ Failed to get JWT token"
    exit 1
fi
echo ""

echo "Step 3: Building query parameters..."
PARAMS=""

if [ -n "$IDENTIFIER" ]; then
    PARAMS="${PARAMS}&identifier=$IDENTIFIER"
fi

if [ -n "$GENDER" ]; then
    PARAMS="${PARAMS}&gender=$GENDER"
fi

if [ -n "$PATIENT_NAME" ]; then
    # Try to split name into first and last name
    FIRST_NAME=$(echo "$PATIENT_NAME" | awk '{print $1}')
    LAST_NAME=$(echo "$PATIENT_NAME" | awk '{print $NF}')
    
    if [ "$FIRST_NAME" != "$LAST_NAME" ]; then
        # Multi-word name
        PARAMS="${PARAMS}&fname=$FIRST_NAME&lname=$LAST_NAME"
        echo "  Search: First Name = $FIRST_NAME, Last Name = $LAST_NAME"
    else
        # Single word - try as first name
        PARAMS="${PARAMS}&fname=$FIRST_NAME"
        echo "  Search: First Name = $FIRST_NAME"
    fi
fi

if [ -n "$BIRTH_DATE" ]; then
    PARAMS="${PARAMS}&birthDate=$BIRTH_DATE"
fi

if [ -n "$GENDER" ]; then
    echo "  Search: Gender = $GENDER"
fi

# Remove leading &
PARAMS=$(echo "$PARAMS" | sed 's/^&/?/')

# Build URL
if [ -z "$PARAMS" ]; then
    QUERY_URL="$BASE_URL/api/patients"
else
    QUERY_URL="$BASE_URL/api/patients${PARAMS}"
fi

echo "  Query URL: $QUERY_URL"
echo ""

echo "Step 4: Querying REST API..."
RESPONSE=$(curl -s -X GET "$QUERY_URL" \
    -H "Authorization: Bearer $JWT" \
    -H "Accept: application/json")

echo "  Response received"
echo "$RESPONSE" > /tmp/test-patient-response.json

TOTAL=$(echo "$RESPONSE" | jq '.total // 0')
echo "  ✓ Found $TOTAL patient(s)"
echo ""

echo "Step 5: Formatting results..."
if [ "$TOTAL" = "0" ]; then
    echo "  No patients found"
else
    echo "  Patient details:"
    echo "$RESPONSE" | jq -r '.patients[] | "    - \(.firstName) \(.lastName) (\(.gender), \(.dateOfBirth))"'
fi
echo ""

echo "======================================"
echo "✓ Workflow simulation completed successfully!"
echo "======================================"
echo ""
echo "The actual GitHub Actions workflow will:"
echo "  1. ✓ Parse issue form fields"
echo "  2. ✓ Start Docker containers"
echo "  3. ✓ Authenticate with API"
echo "  4. ✓ Query patients"
echo "  5. ✓ Post results as comment"
echo "  6. ✓ Close the issue"
echo ""
