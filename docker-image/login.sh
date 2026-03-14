#!/bin/bash

set -e

cd ..
source ./conf.env
cd -

echo "${OWDB_PAT}" | docker login ghcr.io -u ${OWDB_USERNAME} --password-stdin