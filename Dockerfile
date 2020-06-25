FROM node:12

MAINTAINER Mitesh Singh Jat <mitesh.singh.jat@gmail.com>

ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

# Create app directory
WORKDIR /usr/src/app


# Install app dependencies
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

USER node
COPY . .
EXPOSE 8080
ENTRYPOINT ["/tini", "--"]
CMD [ "node", "server.js" ]
