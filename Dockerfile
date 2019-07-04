FROM centos:centos7

MAINTAINER David Chen <david@davidchen.blog>

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum clean all && yum makecache fast
RUN yum install -y gcc-c++ make git
RUN yum install -y nodejs
RUN git clone https://github.com/bhj/karaoke-forever.git
WORKDIR /karaoke-forever

RUN npm install
RUN npm run build

ENTRYPOINT ["npm", "run"]
CMD ["serve", "--", "--port", "80"]

EXPOSE 80
