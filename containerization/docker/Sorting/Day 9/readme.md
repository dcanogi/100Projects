# Day 9: Add a Database Service to Your Multi-Service Application

## Objective
The objective of this project is to integrate a MongoDB database service into our existing multi-service application, which currently consists of a Node.js backend and an NGINX web server. This integration will enable our application to store and retrieve data persistently.

## Key Concepts
- **Database Integration**: Understanding how to connect a Node.js application to a MongoDB database using Docker.
- **Service Configuration**: Configuring the MongoDB service within the Docker Compose setup.
- **Data Persistence**: Implementing a persistent volume for MongoDB to retain data across container restarts.

## Deliverables
- An updated `docker-compose.yml` file that includes a MongoDB service.
- Verification that the Node.js application can connect to the MongoDB database and perform basic CRUD operations.

## Example Structure
1. **Service Definitions**: Define the MongoDB service alongside the existing Node.js and NGINX services in the `docker-compose.yml` file.
2. **Environment Variables**: Configure necessary environment variables for MongoDB such as `MONGO_INITDB_ROOT_USERNAME` and `MONGO_INITDB_ROOT_PASSWORD`.
3. **Network Configuration**: Ensure that all services are on the same Docker network for seamless communication.
