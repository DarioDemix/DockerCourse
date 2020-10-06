# Specify a base image
FROM node:lts-alpine3.9

WORKDIR /usr/app

# Copy from build context to container context
# npm install only requires package.json to run
COPY ./package.json ./

# Install some dependencies
RUN npm install

# after npm install, copy all the content
COPY ./ ./

# Default command
CMD ["npm", "start"]