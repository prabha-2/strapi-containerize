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

### Notes

The application runs fully inside a Docker container.
Secrets are injected at runtime and are not committed to the repository.
This setup reflects real-world production behavior rather than development shortcuts.

### What This Project Demonstrates

Understanding of Docker multi-stage builds
Proper separation of build-time and runtime concerns
Secure handling of environment-specific configuration
Ability to containerize and run backend services reproducibly

# 🚀 Getting started with Strapi

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/dev-docs/cli) (CLI) which lets you scaffold and manage your project in seconds.

### `develop`

Start your Strapi application with autoReload enabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-develop)

```
npm run develop
# or
yarn develop
```

### `start`

Start your Strapi application with autoReload disabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-start)

```
npm run start
# or
yarn start
```

### `build`

Build your admin panel. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-build)

```
npm run build
# or
yarn build
```

## ⚙️ Deployment

Strapi gives you many possible deployment options for your project including [Strapi Cloud](https://cloud.strapi.io). Browse the [deployment section of the documentation](https://docs.strapi.io/dev-docs/deployment) to find the best solution for your use case.

```
yarn strapi deploy
```

## 📚 Learn more

- [Resource center](https://strapi.io/resource-center) - Strapi resource center.
- [Strapi documentation](https://docs.strapi.io) - Official Strapi documentation.
- [Strapi tutorials](https://strapi.io/tutorials) - List of tutorials made by the core team and the community.
- [Strapi blog](https://strapi.io/blog) - Official Strapi blog containing articles made by the Strapi team and the community.
- [Changelog](https://strapi.io/changelog) - Find out about the Strapi product updates, new features and general improvements.

Feel free to check out the [Strapi GitHub repository](https://github.com/strapi/strapi). Your feedback and contributions are welcome!

## ✨ Community

- [Discord](https://discord.strapi.io) - Come chat with the Strapi community including the core team.
- [Forum](https://forum.strapi.io/) - Place to discuss, ask questions and find answers, show your Strapi project and get feedback or just talk with other Community members.
- [Awesome Strapi](https://github.com/strapi/awesome-strapi) - A curated list of awesome things related to Strapi.

---

<sub>🤫 Psst! [Strapi is hiring](https://strapi.io/careers).</sub>
