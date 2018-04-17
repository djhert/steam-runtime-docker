# steam-runtime-docker
The Steam Runtime converted to a Docker Image.  Meant for compiling applications for use with Steam for Linux. 

The current implementation of the Steam Runtime for developers is to use 'schroot', which is not practical for all Linux users as it is highly dependent on Debian-based flavors of Linux.  As an Arch Linux user, I was unable to get 'schroot' to work comfortably enough with my workflow and needed a more portable and reliable method.  By using a Docker container, we are able to setup an Ubuntu 14.04 environment and install all of the Steam Runtime libraries on any system that Docker is able to run on (<strong>Note:</strong> No guarantee that this will run on any OS other than Linux, however if it does let me know and I'll remove this line!).  

## Installation
Install and configure Docker for your distribution of Linux.  This guide will assume your user can run Docker.

Clone this repository:
```sh
$ git clone https://github.com/markedhero/steam-runtime-docker
$ cd steam-runtime-docker
``` 
Make any modifications to the Installation Script (if applicable).

Build the Docker Container:
```sh
# docker build .
```
