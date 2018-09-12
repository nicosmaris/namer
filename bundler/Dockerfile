FROM ruby:2.1

# the next two env vars instruct bundler to put gems
# in a folder that won't be lost due to docker volume
# (mounting of a host folder without gems)
ENV GEM_PATH /box
ENV GEM_HOME /box

ENV BUNDLE_PATH /box
RUN mkdir $BUNDLE_PATH

RUN gem install bundler

WORKDIR /src

CMD ["./entrypoint.sh"]
