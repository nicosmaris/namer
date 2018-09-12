FROM node:8

# the next env var instructs npm to put packages
# in a folder that won't be lost due to docker volume
# (mounting of a host folder without gems)
ENV NODE_PATH /box

ENV BUNDLE_PATH /box
RUN mkdir $BUNDLE_PATH

RUN mkdir /src
WORKDIR /src

CMD ["./entrypoint.sh"]
