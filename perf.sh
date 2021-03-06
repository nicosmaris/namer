#!/bin/sh +ex

cd $1

docker build --pull --no-cache -t my-image .
docker history my-image
echo "timestamp: starting my-container"
docker run -v `pwd`:/src --name my-container my-image
echo "timestamp: stop and start my-container"
# docker stop my-container
docker start -a my-container
echo "timestamp: stop, rm and run my-container"
# docker stop my-container
docker rm my-container
docker run -v `pwd`:/src --name my-container my-image

# cleanup for next run if any
# docker stop my-container
docker rm my-container
docker rmi my-image

