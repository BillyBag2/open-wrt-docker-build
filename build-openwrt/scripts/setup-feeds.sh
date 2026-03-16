#!/bin/bash

cd ..

./scripts/feeds update -a
./scripts/feeds install -a
