#/bin/sh
containers=$(docker ps -a | grep udacity-assignments)
echo $containers
if [ ! -z "$containers" -a "$containers" != "" ]; then
  echo "Container already exists"
  docker start -ai tensorflow-udacity
else
  docker run -p 8888:8888 --name tensorflow-udacity -it gcr.io/tensorflow/udacity-assignments:1.0.0
fi
