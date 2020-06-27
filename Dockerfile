FROM miteshsjat/node:12

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
