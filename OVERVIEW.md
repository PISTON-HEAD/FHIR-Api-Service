## Project Description

**FHIR GraphQL Patient API** - A modern healthcare data management service that provides a secure, standards-compliant API for managing patient information using FHIR R4 specifications. The service offers both REST and GraphQL interfaces with JWT-based authentication and includes GitHub Issue Ops automation for patient lookups.

## Technologies Used

### **Backend Framework**
- **Java 21** - Modern LTS Java version
- **Spring Boot 3.5.11** - Enterprise-grade application framework
- **Spring Data JPA** - Database abstraction and ORM
- **Spring Security** - Authentication and authorization
- **Spring GraphQL** - GraphQL server implementation

### **API Layer**
- **REST API** - Traditional RESTful endpoints for CRUD operations
- **GraphQL** - Modern query language with GraphiQL IDE interface
- **HAPI FHIR 6.10.0** - HL7 FHIR R4 implementation for healthcare data standards

### **Security**
- **JWT (JSON Web Tokens)** - Stateless authentication using jjwt 0.12.3
- **Spring Security** - Request filtering and authentication management
- **BCrypt** - Password hashing

### **Database**
- **MySQL** - Relational database for persistent storage
- **Hibernate** - JPA implementation with MySQL dialect

### **DevOps & Containerization**
- **Docker** - Application containerization
- **Docker Compose** - Multi-container orchestration (MySQL + API)
- **Maven** - Build automation and dependency management

### **Developer Tools**
- **Lombok** - Boilerplate code reduction
- **Spring Boot DevTools** - Hot reload during development
- **Spring Boot Actuator** - Health checks and monitoring endpoints

### **Testing & Documentation**
- **Postman** - API testing with pre-configured collection
- **GraphiQL** - Interactive GraphQL query interface
- **JUnit/Spring Boot Test** - Unit and integration testing

### **CI/CD & Automation**
- **GitHub Actions** - Workflow automation
- **GitHub Issue Ops** - Patient lookup via issue templates
- **Issue Forms** - Structured patient search requests

### **Key Features**
- FHIR R4 compliant patient resources
- Multi-criteria patient search (name, gender, identifier, birthdate)
- JWT-based stateless authentication
- GitHub Issue-driven patient lookups
- Pre-loaded sample data (8 patients, 3 users)
- RESTful and GraphQL dual API support
- Containerized deployment with Docker
