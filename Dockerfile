FROM node:12

MAINTAINER Mitesh Singh Jat <mitesh.singh.jat@gmail.com>

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY . .

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

EXPOSE 8080
CMD [ "node", "server.js" ]
