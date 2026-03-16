#!/bin/bash

set -e

# This scripts directory.
SCRIPTS_DIR=$(dirname "$0")

cd ..
rm .config
cp _platform/config .config
make defconfig

