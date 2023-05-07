# Base image
 FROM node:14-alpine
 
 # Set working directory
 WORKDIR /app
 
 # Copy package.json and package-lock.json
 COPY package*.json ./
 
 # Install dependencies
 RUN npm install
 
 # Copy the rest of the application code
 COPY . .
 
 # Build the React application
 RUN npm run build
 
 # Set the command to serve the application
 CMD [ "npm", "run", "start" ]