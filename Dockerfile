FROM node:10.13-alpine
ENV NODE_ENV production

# create a work directory inside the container
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install global dependencies
RUN npm install -g yarn

# Install app dependencies
# COPY package.json /usr/src/app/

COPY package.json *yarn* ./

RUN yarn

COPY . .

EXPOSE 3000

CMD node src/index