# Postman Collection Guide

## Setup

1. **Import Collection**
   - Open Postman
   - Click **Import**
   - Select `FHIR_GraphQL_API.postman_collection.json`
   - Click **Import**

2. **Create Environment** (Optional but Recommended)
   - Click **Environments** (left sidebar)
   - Click **+** to create new environment
   - Name it: `FHIR API Local`
   - Add variable: `jwt_token` (leave value empty - auto-populated)
   - Add variable: `username` (leave value empty - auto-populated)
   - **Save** and select this environment

## Usage Workflow

### Step 1: Start the Application

```bash
# Start MySQL
docker-compose up -d

# Start Spring Boot
mvn clean spring-boot:run
```

Wait for: "Started ApiApplication in X seconds"

### Step 2: Login to Get JWT Token

Run request: **1.2 Login**

**Default credentials:**

- Username: `admin`
- Password: `password`

✅ The JWT token is **automatically saved** to the environment variable `jwt_token`

### Step 3: Create Patients (Optional)

Run these requests in order:

- **2.1 Create Patient - John Smith**
- **2.2 Create Patient - Emma Wilson**

Patient IDs are automatically saved as `patient1_id` and `patient2_id`

### Step 4: Query Patients with GraphQL

Try any of these queries:

**Find by Identifier:**

- **3.1 Query Patient by Identifier (MRN)** - Find patient by MRN0001
- **3.2 Query Patient by Identifier (SSN)** - Find patient by SSN

**Find by Gender:**

- **3.3 Query Patients by Gender (Male)** - All male patients
- **3.4 Query Patients by Gender (Female)** - All female patients

**Find by Last Name:**

- **3.5 Query Patients by Last Name (Smith)**
- **3.6 Query Patients by Last Name (Doe)**

**Get All:**

- **3.7 Query All Patients** - Retrieve all patients in database

## Collection Structure

### Folder 1: Authentication

- **1.1 Create User (Signup)** - Register new user
- **1.2 Login** - Get JWT token (auto-saves token)

### Folder 2: Create Patients (REST API)

- **2.1 Create Patient - John Smith** - Male patient with 3 identifiers
- **2.2 Create Patient - Emma Wilson** - Female patient with 3 identifiers

### Folder 3: GraphQL Queries

- **3.1-3.2** - Query by identifier (MRN, SSN)
- **3.3-3.4** - Query by gender (male, female)
- **3.5-3.6** - Query by last name
- **3.7** - Query all patients

### Folder 4: Sample Data Queries

- **4.1** - Find specific patient (MRN0005)
- **4.2** - Find patients by last name (Garcia)

## Understanding Responses

### Authentication Response

```json
{
  "token": "eyJhbGci...",
  "username": "admin",
  "role": "ROLE_USER",
  "message": "Login successful"
}
```

### Patient Creation Response

```json
{
  "id": "7a19d244-6c70-4ff0-b17a-d37284dbdac7",
  "firstName": "John",
  "lastName": "Smith",
  "message": "Patient created successfully"
}
```

### GraphQL Patient Response

```json
{
  "data": {
    "patient": {
      "id": "650e8400-e29b-41d4-a716-446655440001",
      "firstName": "John",
      "lastName": "Doe",
      "gender": "male",
      "dateOfBirth": "1990-01-15",
      "identifiers": [
        {
          "type": "MRN",
          "value": "MRN0001",
          "system": "http://hospital.com/mrn"
        }
      ],
      "fhirResource": "{\"resourceType\":\"Patient\",\"id\":\"650e8400...\""
    }
  }
}
```

### GraphQL Bundle Response (Multiple Patients)

```json
{
  "data": {
    "patientsByGender": {
      "total": 5,
      "fhirBundle": "{\"resourceType\":\"Bundle\",\"type\":\"searchset\"...}",
      "patients": [
        {
          "id": "650e8400-e29b-41d4-a716-446655440001",
          "firstName": "John",
          "lastName": "Doe",
          "gender": "male",
          "dateOfBirth": "1990-01-15"
        }
      ]
    }
  }
}
```

## Pre-loaded Sample Data

### Users (All have password: "password")

- `admin` - admin@fhir.com
- `doctor1` - doctor1@fhir.com
- `nurse1` - nurse1@fhir.com

### Patients (8 pre-loaded)

1. **John Doe** (Male) - MRN0001, ACN0001, VIS0001, DL12345
2. **Jane Smith** (Female) - MRN0002, ACN0002, SSN123456
3. **Robert Johnson** (Male) - MRN0003, ACN0003, VIS0003
4. **Emily Williams** (Female) - MRN0004, ACN0004
5. **Michael Brown** (Male) - MRN0005, ACN0005, INS54321
6. **Sarah Davis** (Female) - MRN0006, ACN0006
7. **David Martinez** (Male) - MRN0007, ACN0007, VIS0007
8. **Lisa Garcia** (Female) - MRN0008, ACN0008

## Troubleshooting

### Token Expired (401 Unauthorized)

- Re-run **1.2 Login** to get a new token
- Tokens expire after 30 minutes

### No Results from GraphQL Query

- Check if the identifier/name exists in the database
- Run **3.7 Query All Patients** to see what's available
- Verify you're logged in (check Authorization header has Bearer token)

### Request Fails with 403 Forbidden

- You're not authenticated
- Run **1.2 Login** first to get a JWT token
- Make sure the environment is selected with `jwt_token` variable

### MySQL Connection Error

- Make sure MySQL is running: `docker-compose ps`
- Check application logs for connection errors
- Verify MySQL is healthy: `docker-compose logs mysql`

## Tips

1. **Use Environment Variables** - The collection automatically saves tokens and IDs
2. **Run in Order** - Start with Login (1.2), then create patients (2.x), then query (3.x)
3. **Check Console** - Look at Postman Console for saved variables
4. **Variables are Auto-Updated** - Token and patient IDs update automatically
5. **FHIR Bundle** - The `fhirBundle` field contains complete FHIR R4 JSON (compact, no newlines)

## Testing Workflow

**Complete Test Run:**

1. ✅ **1.2 Login** (admin/password)
2. ✅ **2.1 Create Patient - John Smith**
3. ✅ **2.2 Create Patient - Emma Wilson**
4. ✅ **3.3 Query Patients by Gender (Male)** (Should return 6+ patients)
5. ✅ **3.4 Query Patients by Gender (Female)** (Should return 4+ patients)
6. ✅ **3.7 Query All Patients** (Should return 10+ patients)

All requests should return **200 OK** or **201 Created**.
