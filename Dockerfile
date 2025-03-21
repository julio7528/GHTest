# FROM node:alpine
# This line specifies the base image for our Docker image.
# 'node' refers to the official Node.js image on Docker Hub.
# 'alpine' is a tag that specifies a lightweight Linux distribution (Alpine Linux) as the base.
# This means our image will start with a minimal Node.js environment based on Alpine Linux.
FROM node:alpine

# COPY . /app
# This line copies files and directories from the current build context (where the Dockerfile is located)
# to the '/app' directory inside the Docker image.
# '.' represents the current directory on the host machine (the build context).
# '/app' is the destination directory inside the container's filesystem.
# This effectively copies your application's source code and any other necessary files into the image.
COPY . /app

# WORKDIR /app
# This line sets the working directory for any subsequent instructions in the Dockerfile (like CMD).
# '/app' is the directory inside the container that will be used as the current working directory.
# This means that when 'node app.js' is executed, it will be executed from within the /app directory.
WORKDIR /app

# CMD node app.js
# This line specifies the command that will be executed when a container is started from this image.
# 'node app.js' will run the Node.js application located at 'app.js' inside the /app directory.
# This is the entry point of your application within the container.
CMD node app.js
