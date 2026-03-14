#!/bin/bash

set -e

cd ..
source ./conf.env
cd -

docker push ${OWDB_IMAGE}
