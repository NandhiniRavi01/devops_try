# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /react

# Copy the package.json and package-lock.json to the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

# Expose the port your app runs on (usually 3000 for React)
EXPOSE 3000

# Serve the app using a simple web server like serve
RUN npm install -g serve
CMD ["serve", "-s", "build"]
