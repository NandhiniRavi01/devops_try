# Use a base image that has both Python and Node.js, or install Node.js manually
FROM node:18

# Set the working directory
WORKDIR /app

# Install Node.js
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Copy the application code
COPY . .

# Expose the port for the application
EXPOSE 5000

# Command to run the application
CMD ["node", "index.js"]
