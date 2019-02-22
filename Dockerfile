FROM centos/nodejs-10-centos7

MAINTAINER David Chen <david@davidchen.blog>

RUN git clone https://github.com/bhj/karaoke-forever.git
WORKDIR /karaoke-forever

RUN npm install
RUN npm run compile
RUN npm run serve -- --port 80

EXPOSE 80
