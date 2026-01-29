FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json first (cache optimization)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the app
COPY . .

# Expose internal app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]