#!/bin/sh

docker run \
    --rm \
    -i \
    --network=host \
    -v "$PWD":"$PWD" \
    -u $(id -u):$(id -g) \
    -w "$PWD" \
    php:7.4.8-alpine \
    php "$@"

exit $?
