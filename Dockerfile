# Use an official Node.js runtime as a parent image
FROM node:16
WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3001
CMD ["node" , "index.js"]
