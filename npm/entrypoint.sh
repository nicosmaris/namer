#!/bin/sh

run(){
  echo "timestamp: started '$@' at $(date)"
  $@
  echo "timestamp: finished '$@' at $(date)"
}

cd frontend
run npm install

echo "stopping the container as the goal to measure build and run times and not to build and run a service..."
#npm start

