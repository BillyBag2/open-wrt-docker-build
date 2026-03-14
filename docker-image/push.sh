#!/bin/bash

set -e

source ../conf.env

docker push ${OWDB_IMAGE}
