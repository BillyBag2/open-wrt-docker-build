
ARG D_FROM_IMAGE=ubuntu:24.04
FROM ${D_FROM_IMAGE}

RUN apt update && apt install -y \
    build-essential clang flex bison g++ gawk \
    gcc-multilib g++-multilib gettext git libncurses5-dev libssl-dev \
    python3-setuptools rsync swig unzip zlib1g-dev file wget \
    

RUN mkdir -p /sandbox
WORKDIR /sandbox
