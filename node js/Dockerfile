# Use an official Node.js runtime as a parent image
FROM node:18-slim

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files (if any) to install dependencies
COPY package*.json ./

# Install any needed packages
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 3000 (the port the Node.js app runs on)
EXPOSE 3000

# Command to run the Node.js application
CMD ["node", "app.js"]
