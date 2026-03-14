#!/bin/bash

set -e

cd ..
source ./conf.env
cd -

cd dockerfile

docker build \
    -t ${OWDB_IMAGE_ROOT} \
    .

