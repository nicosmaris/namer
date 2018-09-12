#!/bin/sh

run(){
  echo "timestamp: started '$@' at $(date)"
  $@
  echo "timestamp: finished '$@' at $(date)"
}
run bundle install

echo "stopping the container as the goal to measure build and run times and not to build and run a service..."
#rackup --host 0.0.0.0 -p 8080

