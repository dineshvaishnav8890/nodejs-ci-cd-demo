# Use Node.js official image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose port and define startup command
EXPOSE 3000
CMD ["npm", "start"]

