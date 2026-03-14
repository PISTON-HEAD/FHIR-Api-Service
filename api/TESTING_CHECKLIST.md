# Postman Collection Testing Checklist

## ✅ Pre-Flight Verification Complete

### System Status

- ✅ **MySQL Container**: Running (Healthy) on port 3306
- ✅ **Application Port**: Configured for 9090
- ✅ **Postman Collection**: All 13 requests configured for port 9090
- ✅ **GraphQL Endpoint**: `/graphql/fhirapi/patient`
- ✅ **Sample Data**: 8 patients + 3 users pre-loaded

### Configuration Fixed

- ✅ All port inconsistencies resolved (was 11111 & 8181, now all 9090)
- ✅ GraphQL path updated to non-deprecated property
- ✅ UUID storage configured as CHAR(36) for MySQL compatibility
- ✅ FHIR output configured for compact JSON (no `\n` escapes)

## 🚀 Testing Workflow

### Step 1: Start Application

```powershell
cd 'c:\Docker - Training\spring-microservice\api'
mvn clean spring-boot:run
```

**Wait for:** "Started ApiApplication in X seconds"

### Step 2: Import Postman Collection

1. Open Postman
2. Click **Import**
3. Select `FHIR_GraphQL_API.postman_collection.json`
4. Click **Import**

### Step 3: Test Authentication

#### 3.1 Login (Required First!)

**Request:** `1.2 Login`

**Body:**

```json
{
  "username": "admin",
  "password": "password"
}
```

**Expected Response (200 OK):**

```json
{
  "token": "eyJhbGci...",
  "username": "admin",
  "role": "ROLE_USER",
  "message": "Login successful"
}
```

**Auto-Saved Variables:**

- ✅ `jwt_token` - Automatically saved to environment
- ✅ `username` - Automatically saved

#### 3.2 Create New User (Optional)

**Request:** `1.1 Create User (Signup)`

**Expected Response (201 Created):**

```json
{
  "token": "eyJhbGci...",
  "username": "testdoctor",
  "role": "ROLE_USER",
  "message": "User created successfully"
}
```

### Step 4: Create New Patients

#### 4.1 Create John Smith

**Request:** `2.1 Create Patient - John Smith`

**Expected Response (201 Created):**

```json
{
  "id": "7a19d244-6c70-4ff0-b17a-d37284dbdac7",
  "firstName": "John",
  "lastName": "Smith",
  "message": "Patient created successfully"
}
```

**Auto-Saved Variables:**

- ✅ `patient1_id`
- ✅ `patient1_mrn` = "MRN1001"

#### 4.2 Create Emma Wilson

**Request:** `2.2 Create Patient - Emma Wilson`

**Expected Response (201 Created):**

```json
{
  "id": "8b29e355-7d81-5fc1-c28b-e48395ebebd8",
  "firstName": "Emma",
  "lastName": "Wilson",
  "message": "Patient created successfully"
}
```

**Auto-Saved Variables:**

- ✅ `patient2_id`
- ✅ `patient2_mrn` = "MRN1002"

### Step 5: Test GraphQL Queries

#### 5.1 Query by Identifier (MRN)

**Request:** `3.1 Get Patient by Identifier (MRN)`

**GraphQL Query:**

```graphql
{
  patient(identifier: "MRN1001") {
    id
    firstName
    lastName
    gender
    dateOfBirth
    identifiers {
      type
      value
      system
    }
    fhirResource
  }
}
```

**Expected:** Returns John Smith with FHIR resource

#### 5.2 Query Patients by Gender (Male)

**Request:** `3.3 Get Patients by Gender (Male)`

**Expected:** Returns 5-6 male patients including:

- John Doe
- Robert Johnson
- Michael Brown
- David Martinez
- John Smith (if created)

**Response Format:**

```json
{
  "data": {
    "patientsByGender": {
      "total": 5,
      "fhirBundle": "{\"resourceType\":\"Bundle\"...}",
      "patients": [...]
    }
  }
}
```

#### 5.3 Query Patients by Gender (Female)

**Request:** `3.4 Get Patients by Gender (Female)`

**Expected:** Returns 3-4 female patients including:

- Jane Smith
- Emily Williams
- Sarah Davis
- Lisa Garcia
- Emma Wilson (if created)

#### 5.4 Query by Last Name

**Request:** `3.5 Get Patients by Last Name`

**Expected:** Returns all patients with lastName = "Smith"

#### 5.5 Query All Patients

**Request:** `3.6 Get All Patients`

**Expected:** Returns all 8-10 patients (pre-loaded + newly created)

### Step 6: Test Sample Data

#### 6.1 Query Pre-loaded Patient

**Request:** `4.1 Get Existing Patient (MRN0001)`

**Expected:** Returns John Doe (from import.sql)

#### 6.2 Query Sample Female Patients

**Request:** `4.2 Get Sample Female Patients`

**Expected:** Returns Jane, Emily, Sarah, Lisa from sample data

## ✅ Success Criteria

### All Requests Should Return:

- ✅ **Authentication**: 200 OK or 201 Created
- ✅ **Patient Creation**: 201 Created with UUID
- ✅ **GraphQL Queries**: 200 OK with valid JSON
- ✅ **FHIR Bundle**: Compact JSON (no `\n` characters)
- ✅ **Token Auto-Save**: Variables populated automatically

### Common Issues & Solutions

#### Issue: 401 Unauthorized

**Cause:** JWT token missing or expired  
**Solution:** Re-run "1.2 Login" request

#### Issue: Port Connection Refused

**Cause:** Application not running  
**Solution:** Run `mvn clean spring-boot:run` and wait for startup

#### Issue: MySQL Connection Error

**Cause:** MySQL container not running  
**Solution:** Run `docker-compose up -d`

#### Issue: Empty Results from GraphQL

**Cause:** Wrong identifier or no data  
**Solution:** Run "3.6 Get All Patients" to see available data

## 📊 Expected Test Results

| Request              | Expected Status | Response Time | Validates                      |
| -------------------- | --------------- | ------------- | ------------------------------ |
| 1.2 Login            | 200 OK          | < 500ms       | JWT generation                 |
| 2.1 Create Patient 1 | 201 Created     | < 1s          | UUID generation, identifiers   |
| 2.2 Create Patient 2 | 201 Created     | < 1s          | Patient creation               |
| 3.1 Query by MRN     | 200 OK          | < 300ms       | Identifier search              |
| 3.3 Query by Gender  | 200 OK          | < 500ms       | FHIR Bundle, multiple patients |
| 3.6 Query All        | 200 OK          | < 800ms       | All data retrieval             |

## 🎯 Final Verification

Run this sequence without errors:

1. ✅ **1.2 Login** → 200 OK, token saved
2. ✅ **2.1 Create John** → 201 Created, ID saved
3. ✅ **2.2 Create Emma** → 201 Created, ID saved
4. ✅ **3.3 Query Males** → 200 OK, returns 5+ patients
5. ✅ **3.6 Query All** → 200 OK, returns 10+ patients

**If all pass:** Everything is working correctly! ✅

## 📝 Collection Variables Reference

These are automatically managed by the collection:

| Variable       | Set By           | Used In                    | Purpose            |
| -------------- | ---------------- | -------------------------- | ------------------ |
| `jwt_token`    | Login/Signup     | All authenticated requests | Bearer token       |
| `username`     | Login/Signup     | Display only               | Current user       |
| `patient1_id`  | Create Patient 1 | Future queries             | John Smith's UUID  |
| `patient1_mrn` | Create Patient 1 | Future queries             | John's MRN         |
| `patient2_id`  | Create Patient 2 | Future queries             | Emma Wilson's UUID |
| `patient2_mrn` | Create Patient 2 | Future queries             | Emma's MRN         |

## Port Configuration Summary

**ALL endpoints use port 9090:**

- Authentication: `http://localhost:9090/auth/*`
- REST API: `http://localhost:9090/api/patients`
- GraphQL: `http://localhost:9090/graphql/fhirapi/patient`
- GraphiQL UI: `http://localhost:9090/graphiql`

---

**Status:** ✅ All configurations verified and ready for testing!
