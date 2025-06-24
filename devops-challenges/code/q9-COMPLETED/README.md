# DevOps Challenge q9

### Context
You're a DevOps engineer working on a Node.js application. Your company is keen on optimising Docker images for production use.

### Objective
Create a Dockerfile that accomplishes the following:

1. Utilizes multi-stage builds for development and production.
2. In the first stage, named `builder`, use a Node.js image to install all dependencies and build the application. Assume that the build command is `npm run build`.
3. In the second stage, named `production`, use a smaller base image like `node:alpine` to set up the production environment. Copy only the essential files and folders from the `builder` stage.
4. Ensure that the production stage runs as a non-root user for added security.
5. Expose port `3000` for the application.
6. Make sure that the application starts with the command `npm start`.

### Constraints
- Your Dockerfile should be optimized for size and security.
- You can assume that a `.dockerignore` file is already set up to exclude unnecessary files.

### Bonus
- Include health checks in your Dockerfile.
- Use BuildKit features for added optimization, if you're familiar with them.

### Deliverables
- The Dockerfile.
- A brief README explaining the steps taken, any arguments used, and why you chose a particular base image or strategy.

-----------------------------------
# Docker cheatsheet

# Pull a new image from docker hub
docker pull node:1.2.6-alpine

# Creating new containers
docker run --name<name> -d (detach) -p localport:appport image:tag

# Creating an image and container from a Dockerfile
docker build -t name:version . # For the image creation
docker run --name<name> -d (detach) -p localport:appport image:tag # For the container creation

# See docker containers
docker ps
docker ps -a #more informational

# Stop / Start docker containters
docker stop <container_id>
docker start <container_id>

# See docker container logs
docker logs <containter_id>

# Docker registries
dockerhub - public and private registries
AWS ECR - private