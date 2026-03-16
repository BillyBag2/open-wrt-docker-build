#!/bin/bash

set -e

cd ..
make -j $(nproc)
