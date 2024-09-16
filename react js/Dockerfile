FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Fix permissions for npm cache
RUN mkdir -p /usr/src/app/.npm-cache && \
    chown -R node:node /usr/src/app/.npm-cache

# Set npm cache directory to avoid permission issues
RUN npm config set cache /usr/src/app/.npm-cache --global



# Copy package.json and package-lock.json (if available)
COPY --chown=node:node package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY --chown=node:node . .

# Expose the port the app runs on
EXPOSE 3000

# Run the app
CMD [ "npm", "start" ]
