# Use the Node.js 20 base image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first (for efficient caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that Vite runs on (default is 5173)
EXPOSE 5173

# Start the Vite development server
CMD ["npm", "run", "dev"]

