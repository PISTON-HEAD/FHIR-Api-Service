# FHIR GraphQL Patient API

A Spring Boot GraphQL API service for managing patient data with FHIR R4 compliance and JWT authentication.

## Quick Start

### 1. Start MySQL with Docker

```bash
docker-compose up -d
```

### 2. Run the Application

```bash
mvn clean spring-boot:run
```

The application will start on **http://localhost:9090**

### 3. Import Postman Collection

Import `FHIR_GraphQL_API.postman_collection.json` into Postman

## API Endpoints

### Authentication

- **POST** `/auth/signup` - Create new user
- **POST** `/auth/login` - Login and get JWT token

### REST API

- **POST** `/api/patients` - Create a new patient (requires JWT)
- **GET** `/api/patients` - Search patients with query parameters (requires JWT)
  - Query parameters: `fname`, `lname`, `gender`, `identifier`, `birthDate`
  - Example: `/api/patients?gender=male&fname=john`
  - Example: `/api/patients?identifier=MRN0001`
  - Example: `/api/patients?fname=Emily&gender=female`

### GraphQL Endpoint

- **POST** `/graphql/fhirapi/patient` - All GraphQL queries (requires JWT)

### GraphiQL Interface

- **GET** `/graphiql` - Interactive GraphQL IDE

## Sample Data

The application comes pre-loaded with:

- **3 Users** (username: admin, doctor1, nurse1 | password: "password")
- **8 Patients** with various identifiers (MRN, SSN, Account Number, etc.)

## Default Credentials

```
Username: admin
Password: password
```

## Pre-loaded Patients for Testing

The database includes 8 sample patients you can use to test the API and GitHub Issue Ops:

| Patient Name         | Gender | Date of Birth | Identifiers                        |
| -------------------- | ------ | ------------- | ---------------------------------- |
| John Michael Doe     | male   | 1990-01-15    | MRN0001, ACN0001, VIS0001, DL12345 |
| Jane Elizabeth Smith | female | 1985-05-20    | MRN0002, ACN0002, SSN123456        |
| Robert James Johnson | male   | 1978-11-30    | MRN0003, ACN0003, VIS0003          |
| Emily Rose Williams  | female | 1992-03-25    | MRN0004, ACN0004                   |
| Michael David Brown  | male   | 1988-07-10    | MRN0005, ACN0005, INS54321         |
| Sarah Anne Davis     | female | 1995-12-05    | MRN0006, ACN0006                   |
| David Lee Martinez   | male   | 1982-09-18    | MRN0007, ACN0007, VIS0007          |
| Lisa Marie Garcia    | female | 1991-02-28    | MRN0008, ACN0008                   |

### Example Values for GitHub Issue Template Testing

When creating a patient lookup issue, you can use these test values:

**Search by Name:**

- Patient Name: `John Doe` or `Jane Smith` or `Emily Williams`

**Search by Gender:**

- Gender: `male` (4 results) or `female` (4 results)

**Search by Identifier:**

- Patient Identifier: `MRN0001`, `ACN0002`, `SSN123456`, `VIS0003`, `DL12345`, `INS54321`

**Search by Birth Date:**

- Birth Date: `1990-01-15`, `1985-05-20`, `1992-03-25`

**Combined Search Example:**

- Patient Name: `David`
- Gender: `male`
- Birth Date: `1982-09-18`

## GitHub Issue Ops - Automated Patient Lookup

This project includes GitHub Actions automation that allows you to search for patients directly through GitHub Issues!

### How to Use Issue Ops

1. **Go to the Issues tab** in your GitHub repository
2. **Click "New Issue"**
3. **Select "🔍 Patient Lookup Request"** template
4. **Fill in the search criteria:**
   - Patient Name (e.g., `John Doe` or `Smith`)
   - Gender (`male` or `female`)
   - Patient Identifier (e.g., `MRN0001`)
   - Birth Date (optional, format: `YYYY-MM-DD`)
5. **Submit the issue**

The workflow will automatically:

- ✅ Start the Docker containers
- ✅ Authenticate with the FHIR API
- ✅ Query the REST API with your search criteria
- ✅ Support multiple parameter combinations
- ✅ Post the results as a comment on the issue
- ✅ Close the issue with the `completed` label
- ✅ Clean up the Docker containers

### Search Capabilities

The workflow now supports combined parameter searches:

- **Multiple parameters combined**: Search by first name AND gender simultaneously
- **Flexible name search**: Automatically splits full names into first/last name
- **Priority-based search**: Identifier takes precedence, followed by combined criteria
- **All parameters supported**: `fname`, `lname`, `gender`, `identifier`, `birthDate`

### Requirements

For the GitHub Issue Ops to work, you need to configure repository secrets:

- `FHIR_API_USERNAME` - Username for API authentication (e.g., `admin`)
- `FHIR_API_PASSWORD` - Password for API authentication (e.g., `password`)

The workflow will create the user if it doesn't exist, or use existing credentials to login.

## REST API Query Examples

The API now supports direct GET requests with multiple query parameters for flexible patient searches.

### Search by Single Parameter

**Search by First Name:**

```bash
curl -X GET "http://localhost:9090/api/patients?fname=John" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

**Search by Gender:**

```bash
curl -X GET "http://localhost:9090/api/patients?gender=male" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

**Search by Identifier:**

```bash
curl -X GET "http://localhost:9090/api/patients?identifier=MRN0001" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

### Search by Multiple Parameters

**Combine First Name and Gender:**

```bash
curl -X GET "http://localhost:9090/api/patients?fname=John&gender=male" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

**Combine Last Name and Birth Date:**

```bash
curl -X GET "http://localhost:9090/api/patients?lname=Doe&birthDate=1990-01-15" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

**Full Name and Gender Search:**

```bash
curl -X GET "http://localhost:9090/api/patients?fname=Emily&lname=Williams&gender=female" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

### Browser-Friendly URLs

You can also use these URLs directly in your browser (after obtaining a JWT token):

- `http://localhost:9090/api/patients?gender=male&fname=john`
- `http://localhost:9090/api/patients?identifier=MRN0001`
- `http://localhost:9090/api/patients?fname=Emily&gender=female`
- `http://localhost:9090/api/patients` (returns all patients)

## GraphQL Query Examples

### Find Patient by Identifier

```graphql
query {
  patient(identifier: "MRN0001") {
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

### Find Patients by Gender

```graphql
query {
  patientsByGender(gender: "male") {
    total
    fhirBundle
    patients {
      id
      firstName
      lastName
      gender
    }
  }
}
```

### Find Patients by First Name

```graphql
query {
  patientsByFirstName(firstName: "John") {
    total
    fhirBundle
    patients {
      id
      firstName
      lastName
      gender
      identifiers {
        type
        value
      }
    }
  }
}
```

### Find Patients by Last Name

```graphql
query {
  patientsByLastName(lastName: "Smith") {
    total
    fhirBundle
    patients {
      id
      firstName
      lastName
      gender
    }
  }
}
```

### Get All Patients

```graphql
query {
  allPatients {
    total
    fhirBundle
    patients {
      id
      firstName
      lastName
      identifiers {
        type
        value
      }
    }
  }
}
```

## Using Postman Collection

1. **Import** the collection into Postman
2. **Run** "1.2 Login" request to get JWT token (auto-saved)
3. **Create** new patients using "2.1 Create Patient" requests
4. **Query** patients using GraphQL requests in folder 3

The JWT token is automatically saved and used in subsequent requests!

## Docker Commands

### Start MySQL

```bash
docker-compose up -d
```

### Stop MySQL

```bash
docker-compose down
```

### View MySQL Logs

```bash
docker-compose logs -f mysql
```

### Reset Database

```bash
docker-compose down -v
docker-compose up -d
```

## Configuration

Edit `src/main/resources/application.yaml`:

- **Port**: Change `server.port`
- **Database**: Update `spring.datasource` settings
- **JWT**: Modify `jwt.secret` and `jwt.expiration`

## Project Structure

```
src/main/java/com/fhir/api/
├── config/          # Configuration classes
├── controller/      # REST controllers
├── dto/             # Data Transfer Objects
├── entity/          # JPA entities
├── graphql/         # GraphQL resolvers
├── repository/      # Data repositories
├── security/        # Security filters
└── service/         # Business logic

src/main/resources/
├── graphql/
│   └── schema.graphqls    # GraphQL schema
├── application.yaml       # Application config
└── import.sql            # Sample data
```

## Documentation Files

- **README.md** - This file
- **DOCKER_GUIDE.md** - Detailed Docker setup and troubleshooting
- **POSTMAN_GUIDE.md** - Complete Postman collection usage guide

## License

MIT License
