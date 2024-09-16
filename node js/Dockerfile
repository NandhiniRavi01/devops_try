# Use a base image with Node.js
FROM node:18-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . .

# Install Node.js dependencies (if you have a package.json)
RUN npm install

# Expose the port for the application
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
