# Use the official Node.js 14 image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --only=prod

# Copy the rest of the application code
COPY . .

ENV PORT=3000

ENV MODEL_URL=https://storage.googleapis.com/ml-model-andarra/model-in-prod/model.json

# Command to run the application
CMD ["npm", "start"]