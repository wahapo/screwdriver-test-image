FROM node:12

# Screwdriver Version
ARG VERSION=latest

# Create our application directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install Screwdriver API
RUN npm install screwdriver-api@v4.1.194
WORKDIR /usr/src/app/node_modules/screwdriver-api

# Setup configuration folder
RUN ln -s /usr/src/app/node_modules/screwdriver-api/config /config

# Expose the web service port
EXPOSE 8080

# Run the service
CMD [ "npm", "start" ]
