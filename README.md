## Docker training demos for developers

### Measure performance

This folder shows you how to measure image size, time to build and time to start a service.

Also, it shows you how to cache rubygem dependencies when starting a stopped container.

Instructions:

1. Make sure that you have ubuntu 16.04 and Docker engine preferrably 18.06.1-ce
2. Run perf pointing to a folder like `./perf.sh bundler` and store the output in a file like perf.log
3. Check the output of `grep -A 10 IMAGE perf.log` like the following and find the small Dockerfile command by comparing each created time with the previous one (the next line below):

```text 
IMAGE               CREATED                  CREATED BY                                      SIZE                COMMENT
bee9cc68f43f        Less than a second ago   /bin/sh -c #(nop)  EXPOSE 9292                  0B
6bb88bad9f2b        Less than a second ago   /bin/sh -c #(nop)  CMD ["./entrypoint.sh"]      0B
38cc5441882e        1 second ago             /bin/sh -c #(nop) WORKDIR /src                  0B
b479ed7192e8        1 second ago             /bin/sh -c gem install bundler                  1.71MB
009b11c43ad5        3 seconds ago            /bin/sh -c mkdir $BUNDLE_PATH                   0B
e67dfc268a73        5 seconds ago            /bin/sh -c #(nop)  ENV NODE_PATH=/box           0B
ac8e6e2784ef        5 seconds ago            /bin/sh -c #(nop)  ENV BUNDLE_PATH=/box         0B
6e57bd315f20        5 seconds ago            /bin/sh -c #(nop)  ENV GEM_HOME=/box            0B
6d38157954cc        6 seconds ago            /bin/sh -c #(nop)  ENV GEM_PATH=/box            0B
223d1eaa9523        14 months ago            /bin/sh -c #(nop)  CMD ["irb"]                  0B
```

4. Check the output of `grep timestamp perf.log` like the following and expect the second duration to be smaller than the first one below:

```text 
timestamp: starting my-container
timestamp: started 'bundle install' at Thu Sep  6 13:53:08 UTC 2018
timestamp: finished 'bundle install' at Thu Sep  6 13:54:02 UTC 2018
timestamp: stop and start my-container
timestamp: started 'bundle install' at Thu Sep  6 13:54:03 UTC 2018
timestamp: finished 'bundle install' at Thu Sep  6 13:54:03 UTC 2018
timestamp: stop, rm and run my-container
timestamp: started 'bundle install' at Thu Sep  6 13:54:04 UTC 2018
timestamp: finished 'bundle install' at Thu Sep  6 13:54:51 UTC 2018
```

### Links

https://www.datawire.io/not-engineer-running-3-5gb-docker-images
