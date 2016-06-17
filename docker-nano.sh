#!/bin/bash

docker run --name=nano -it --rm --volumes-from=$1 piegsaj/nano nano $2