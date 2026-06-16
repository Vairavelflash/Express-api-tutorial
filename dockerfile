FROM node:20-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies (use npm install instead of ci for now)
RUN npm install --production

# Copy the rest of the application
COPY . .

# Expose port
EXPOSE 3000

# Change ownership and switch to non-root user
RUN chown -R node:node /app
USER node

# Start the app
CMD ["npm", "start"]
