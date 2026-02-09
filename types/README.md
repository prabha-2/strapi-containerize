# Strapi Dockerized Application

This project demonstrates how to containerize a Strapi application using Docker with a **multi-stage build**, running in **production mode** with proper environment configuration.

The goal of this project is to show practical DevOps fundamentals: Dockerization, environment management, and reproducible local setup.

---

## Tech Stack

- Strapi (Headless CMS)
- Node.js 18 (LTS)
- Docker
- Docker Compose

---

## Key Features

- Multi-stage Docker build for cleaner images
- Production-mode Strapi container
- Environment variable–based secret management
- REST API exposed via Strapi
- No dependency on host Node.js or npm

---
## Prerequisites

- Docker
- Docker Compose

## Setup & Run

1. Clone the repository
```bash
git clone <your-repo-url>
cd strapi-app

2. Create environment variables
Create a .env file in the project root:

ADMIN_JWT_SECRET=your_admin_jwt_secret
JWT_SECRET=your_api_jwt_secret
These secrets are required for Strapi to run in production mode.

3. Build and start the application
docker compose up --build
Access the Application
Admin Panel:
http://localhost:1337/admin

## Notes

The application runs fully inside a Docker container.
Secrets are injected at runtime and are not committed to the repository.
This setup reflects real-world production behavior rather than development shortcuts.

**What This Project Demonstrates**

Understanding of Docker multi-stage builds
Proper separation of build-time and runtime concerns
Secure handling of environment-specific configuration
Ability to containerize and run backend services reproducibly