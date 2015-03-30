FROM node:0.12.1

RUN npm install -g bower grunt-cli

WORKDIR /data

CMD ["bash"]
