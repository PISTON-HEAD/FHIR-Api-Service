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
