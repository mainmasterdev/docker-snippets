# Base image
FROM python:3.11.0b5-alpine3.16 AS development

# Create app directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY requirements.txt ./

# Install app dependencies
RUN pip install -r requirements.txt

# Bundle app source
COPY . .

# Start the server using the production build
#CMD [ "node", "dist/main.js" ]
