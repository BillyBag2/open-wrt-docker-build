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
set -e

# Create a build directory.
mkdir -p $OWDB_PLATFORM_DIR/build

# Add a git ignore file to the build directory.
if [ ! -f $OWDB_PLATFORM_DIR/.gitignore ]; then
    echo "build" > $OWDB_PLATFORM_DIR/.gitignore
fi  

docker run \
    --rm \
    -it \
    -v $(pwd)/$OWDB_PLATFORM_DIR/build:$OWDB_SANDBOX_DIR/build \
    -v ${OWDB_SRC_DIR}:$OWDB_SANDBOX_DIR \
    $OWDB_IMAGE \
    /bin/bash