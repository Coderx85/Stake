# Use the official Node.js image as a base image
FROM node:18.17.0

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY package.json ./

# Install all the dependencies
RUN npm install

# Copy the content of the local src directory to the working directory
COPY . .

# Expose the port the app runs in
EXPOSE 3000

# Serve the app
CMD npm run dev