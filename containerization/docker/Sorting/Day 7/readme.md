# Day 7: Configure Environment Variables for Docker Containers

## Objective
The objective of this project is to set up environment variables in Docker Compose, allowing us to pass configuration values and sensitive information to our containers. This practice enhances the flexibility and security of our applications.

## Key Concepts
- **Environment Variables**: Understanding how to use environment variables to configure application settings and secrets.
- **Docker Compose Configuration**: Utilizing the `env_file` directive and inline environment variables within the `docker-compose.yml` file.
- **Best Practices**: Recognizing the importance of keeping sensitive data out of version control.

## Deliverables
- An updated `docker-compose.yml` file that incorporates environment variables for one or more services.
- Verification that the containers correctly use the configured environment variables.

## Example Structure
1. **Service Definition**: Define a service in the `docker-compose.yml` file that requires configuration values through environment variables.
2. **Environment Configuration**: Utilize an `env_file` or inline environment variable definitions.
3. **Data Verification**: Implement a method to confirm that the environment variables are correctly set and accessible within the container.