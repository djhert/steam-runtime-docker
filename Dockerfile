# Steam Runtime Docker
## Download the base Ubuntu 12.04 image
FROM ubuntu:12.04
MAINTAINER markedhero

### Update everything
RUN apt-get update

### Get utilities for easier package management
RUN apt-get install software-properties-common

### Copy the build script in to the Docker Container
COPY build-runtime.sh /build-runtime.sh

### Execute the build script
RUN chmod +x /build-runtime.sh && \
    /build-runtime.sh

### Set the entrypoint to bash
ENTRYPOINT /bin/bash
