FROM node:16

WORKDIR /usr/src/app
COPY static/* .
RUN npm install -g fileserver

RUN apt-get update && \
    apt-get install -y nano && \
    rm -fr /var/lib/apt/lists/*

CMD [ "fileserver", "3000", "." ]