FROM node:0.12.1
MAINTAINER Decheng Zhang <killercentury@gmail.com>

RUN npm install -g bower grunt-cli

WORKDIR /data

CMD ["bash"]
