# Use the official Node.js image as the base image
FROM node:18
 
# Set the working directory inside the container
WORKDIR /usr/src/app
 
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
 
# Install application dependencies
RUN npm install
 
# Copy the rest of the application code to the working directory
COPY . .
 
# Expose the port the app runs on
EXPOSE 4545
 
# Define the command to run the application
CMD ["node", "app.js"]