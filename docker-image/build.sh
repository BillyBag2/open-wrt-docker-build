#!/bin/bash

set -e

source ../conf.env

cd dockerfile

docker build \
    -t ${OWDB_IMAGE_ROOT} \
    .

