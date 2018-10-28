#example
FROM node:10-alpine
RUN mkdir -p /src/app
WORKDIR /src/app
COPY package.json /src/app/package.json
RUN npm install
LABEL vendor=Katacoda \ com.katacoda.version=0.0.5 \ com.katacoda.build-date=2016-07-01T10:47:29Z
COPY . /src/app
EXPOSE 3000
CMD [ "npm", "start" ]


$ cat .dockerignore
passwords.txt
big-temp-file.img
.git
