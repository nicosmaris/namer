FROM ruby:2.1

ENV GEM_PATH /box
ENV GEM_HOME /box
ENV BUNDLE_PATH /box
ENV NODE_PATH /box
RUN mkdir $BUNDLE_PATH

RUN gem install bundler

WORKDIR /src

CMD ["./entrypoint.sh"]
EXPOSE 9292
