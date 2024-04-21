# Use the official Node.js image from Docker Hub
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install npm packages
RUN npm install

# Copy the entire project
COPY . .

# Set the command to run your application
CMD ["node", "index.js"]