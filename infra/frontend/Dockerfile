ARG TAG=16-alpine

FROM node:$TAG

# set working directory
WORKDIR /app

# install app dependencies
COPY ./femsa/package.json ./
COPY ./femsa/package-lock.json ./
RUN npm install


# add app
COPY ./femsa ./

# start app
CMD ["npm", "start"]