FROM mhart/alpine-node:latest

MAINTAINER Zim Kalinowski

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Expose a random port
EXPOSE 80

CMD [ “node”, “index” ]