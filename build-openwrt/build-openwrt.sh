#!/bin/bash
# First parameter is the platform directoty.

set -e

cd ..
source conf.env
cd -

OWDB_PLATFORM_DIR=$1
OWDB_PLATFORM_DIR_DEFAULT=coremp135
OWDB_SANDBOX_DIR=/sandbox

if [ -z "$OWDB_PLATFORM_DIR" ]; then
    echo "Usage: $0 <platform-directory>"
    OWDB_PLATFORM_DIR=$OWDB_PLATFORM_DIR_DEFAULT
    echo "Using default platform directory: $OWDB_PLATFORM_DIR"
fi

docker run \
    --rm \
    -it \
    -u $(id -u):$(id -g) \
    -v $(pwd)/$OWDB_PLATFORM_DIR:$OWDB_SANDBOX_DIR/_platform \
     -v $(pwd)/scripts:$OWDB_SANDBOX_DIR/_scripts \
    -v ${OWDB_SRC_DIR}:$OWDB_SANDBOX_DIR \
    $OWDB_IMAGE \
    /bin/bash