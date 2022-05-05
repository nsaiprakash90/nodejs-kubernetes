FROM node:14.4-alpine
RUN apk --no-cache add curl

# Setting the Node.js User
USER node

# Create a Application Home directory and Node Modules directory to put the application artifacts.
ENV APP_HOME /home/node/app
RUN mkdir -p /home/node/app
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

# Install app dependencies and app source
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY server.js ./

# Run npm install
RUN npm install

#Expose 8080 port
EXPOSE 8080