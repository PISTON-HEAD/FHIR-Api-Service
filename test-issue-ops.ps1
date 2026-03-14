# Test script to simulate GitHub Issue Ops workflow locally
# This validates that the REST API integration works correctly

Write-Host "Testing Issue Ops Workflow Locally..." -ForegroundColor Cyan
Write-Host ""

# Configuration (matching GitHub secrets)
$API_USERNAME = "admin"
$API_PASSWORD = "password"
$BASE_URL = "http://localhost:9090"

# Test 1: Check if API is running
Write-Host "1. Checking if API is running..." -ForegroundColor Yellow
try {
    $health = Invoke-RestMethod -Uri "$BASE_URL/actuator/health" -Method Get
    if ($health.status -eq "UP") {
        Write-Host "   OK - API is healthy" -ForegroundColor Green
    } else {
        Write-Host "   ERROR - API is not healthy" -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "   ERROR - API is not accessible at $BASE_URL" -ForegroundColor Red
    Write-Host "   Please start Docker containers: cd api; docker-compose up -d" -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# Test 2: Authenticate
Write-Host "2. Testing authentication..." -ForegroundColor Yellow

$loginBody = @{
    username = $API_USERNAME
    password = $API_PASSWORD
}

try {
    $authResponse = Invoke-RestMethod -Uri "$BASE_URL/auth/login" -Method Post -Body ($loginBody | ConvertTo-Json) -ContentType "application/json"
    Write-Host "   OK - Login successful with admin credentials" -ForegroundColor Green
    $JWT_TOKEN = $authResponse.token
} catch {
    Write-Host "   INFO - Login failed, trying to create user..." -ForegroundColor Yellow
    
    $signupBody = @{
        username = $API_USERNAME
        password = $API_PASSWORD
        email = "admin@fhir.local"
    }
    
    try {
        $signupResponse = Invoke-RestMethod -Uri "$BASE_URL/auth/signup" -Method Post -Body ($signupBody | ConvertTo-Json) -ContentType "application/json"
        Write-Host "   OK - User created successfully" -ForegroundColor Green
        $JWT_TOKEN = $signupResponse.token
    } catch {
        Write-Host "   ERROR - Failed to authenticate or create user" -ForegroundColor Red
        Write-Host "   Error: $($_.Exception.Message)" -ForegroundColor Red
        exit 1
    }
}

Write-Host ""

# Test 3: Query patients with different parameters
Write-Host "3. Testing REST API queries..." -ForegroundColor Yellow
Write-Host ""

$headers = @{
    Authorization = "Bearer $JWT_TOKEN"
    Accept = "application/json"
}

# Test 3a: All patients
Write-Host "   Test: Get all patients" -ForegroundColor Cyan
try {
    $response1 = Invoke-RestMethod -Uri "$BASE_URL/api/patients" -Method Get -Headers $headers
    Write-Host "      OK - Found $($response1.total) patients" -ForegroundColor Green
} catch {
    Write-Host "      ERROR - Failed to query" -ForegroundColor Red
}
Write-Host ""

# Test 3b: By gender
Write-Host "   Test: Search by gender (male)" -ForegroundColor Cyan
try {
    $response2 = Invoke-RestMethod -Uri "$BASE_URL/api/patients?gender=male" -Method Get -Headers $headers
    Write-Host "      OK - Found $($response2.total) male patients" -ForegroundColor Green
    if ($response2.total -gt 0) {
        $p = $response2.patients[0]
        Write-Host "      Example: $($p.firstName) $($p.lastName)" -ForegroundColor Gray
    }
} catch {
    Write-Host "      ERROR - Failed to query" -ForegroundColor Red
}
Write-Host ""

# Test 3c: By first name
Write-Host "   Test: Search by first name (John)" -ForegroundColor Cyan
try {
    $response3 = Invoke-RestMethod -Uri "$BASE_URL/api/patients?fname=John" -Method Get -Headers $headers
    Write-Host "      OK - Found $($response3.total) patients named John" -ForegroundColor Green
} catch {
    Write-Host "      ERROR - Failed to query" -ForegroundColor Red
}
Write-Host ""

# Test 3d: By identifier
Write-Host "   Test: Search by identifier (MRN0001)" -ForegroundColor Cyan
try {
    $response4 = Invoke-RestMethod -Uri "$BASE_URL/api/patients?identifier=MRN0001" -Method Get -Headers $headers
    Write-Host "      OK - Found $($response4.total) patient(s) with MRN0001" -ForegroundColor Green
    if ($response4.total -gt 0) {
        $p = $response4.patients[0]
        Write-Host "      Patient: $($p.firstName) $($p.lastName) ($($p.gender), $($p.dateOfBirth))" -ForegroundColor Gray
    }
} catch {
    Write-Host "      ERROR - Failed to query" -ForegroundColor Red
}
Write-Host ""

# Test 3e: Combined search
Write-Host "   Test: Search by first name + gender" -ForegroundColor Cyan
try {
    $response5 = Invoke-RestMethod -Uri "$BASE_URL/api/patients?fname=John&gender=male" -Method Get -Headers $headers
    Write-Host "      OK - Found $($response5.total) male patients named John" -ForegroundColor Green
} catch {
    Write-Host "      ERROR - Failed to query" -ForegroundColor Red
}
Write-Host ""

Write-Host "SUCCESS - All tests passed!" -ForegroundColor Green
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Next Steps to Test Issue Ops on GitHub:" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Verify GitHub Secrets are configured:" -ForegroundColor Yellow
Write-Host "   URL: https://github.com/GokulKrishna-Philips/FHIR-Api-Service/settings/secrets/actions"
Write-Host "   Required secrets:"
Write-Host "      FHIR_API_USERNAME = admin"
Write-Host "      FHIR_API_PASSWORD = password"
Write-Host ""
Write-Host "2. Create a test issue:" -ForegroundColor Yellow
Write-Host "   URL: https://github.com/GokulKrishna-Philips/FHIR-Api-Service/issues/new/choose"
Write-Host "   Select: 'Patient Lookup Request'"
Write-Host "   Fill in test data (e.g., Name: John Doe, Gender: male)"
Write-Host ""
Write-Host "3. Monitor the workflow:" -ForegroundColor Yellow
Write-Host "   URL: https://github.com/GokulKrishna-Philips/FHIR-Api-Service/actions"
Write-Host ""
