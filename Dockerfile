#Use an official Node runtime as a base image
FROM  node:21-alpine3.18

# set the working directory in our container
WORKDIR /app

# copy package.json to the working directory

COPY package*.json ./

#  Install app dependencies
RUN npm install

# Copy the source code to the working directory
COPY . .

# expose the port application runs on
EXPOSE 3000

# Define command to run app

CMD ["npm","run","dev"]