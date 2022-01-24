FROM node:16

WORKDIR /usr/src/app
COPY static/* .
RUN npm install -g fileserver

CMD [ "fileserver", "3000", "." ]