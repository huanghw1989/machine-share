FROM node:alpine

LABEL maintainer="huanghongwu <huanghongwu@sendbp.com>"

COPY ./machine-share /home/machine-share

RUN npm install -g /home/machine-share

CMD ["bash"]