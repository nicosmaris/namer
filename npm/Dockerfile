FROM node:8

ENV NODE_PATH /box
ENV BUNDLE_PATH /box
RUN mkdir $BUNDLE_PATH

RUN mkdir /src
WORKDIR /src

CMD ["./entrypoint.sh"]
