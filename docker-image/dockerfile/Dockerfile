
ARG D_FROM_IMAGE=ubuntu:24.04
FROM ${D_FROM_IMAGE}

RUN apt update && apt install -y --no-install-recommends\
    build-essential clang flex bison g++ gawk \
    gcc-multilib g++-multilib gettext git libncurses5-dev libssl-dev \
    python3-setuptools rsync swig unzip zlib1g-dev file wget \
    libpam0g \
    ca-certificates \
    python3-unidecode  python3-cryptography python3-pyelftools \
    nano \
    && apt autoremove -y \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# python3-pysocks 

RUN mkdir -p /sandbox
WORKDIR /sandbox
