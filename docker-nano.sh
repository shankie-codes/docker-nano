#!/bin/bash

# Check if we're passed an absolute or relative path

if [[ "$2" = /* ]]; then
  # We were passed an absolute path
  docker run --name=nano -it --rm --volumes-from=$1 piegsaj/nano nano $2
else
  # We were passed a relative path
  docker run --name=nano -it --rm --volumes-from=$1 piegsaj/nano nano "$(docker exec $1 pwd)/$2"
fi