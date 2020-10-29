#!/bin/sh

docker run \
    --rm \
    -it \
    --network=host \
    --volume $PWD:/app \
    --user $(id -u):$(id -g) \
    composer:1.10.15 \
    composer "$@"

exit $?

