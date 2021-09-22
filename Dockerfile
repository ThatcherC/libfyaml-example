# specify a base image
FROM debian:buster

# make a working directory in the root of the container
WORKDIR /app

RUN apt update \
    && apt install -y gcc autoconf automake libtool git make libltdl-dev pkg-config

RUN git clone https://github.com/pantoniou/libfyaml.git \
  && cd libfyaml \
  && ./bootstrap.sh \
  && ./configure \
  && make \
  && make install \
  && ldconfig -v

# copy everything in the current (host) directory into the working directory
# should be paired with a .dockerignore file
COPY . .
