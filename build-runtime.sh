#!/bin/bash

### Setup Custom
#### Modify this function in any way that you would like.
#### This is meant to easily install other libraries being
#### used in your applications, or to setup a custom
#### configuration.

setupCustom() {
    echo "Beginning Custom Installation..."
}

### Build Runtime
#### Do NOT edit this function
#### This will setup the runtime, and is run first
build-runtime() {
    ## Set the apt sources
    (cat <<EOF
deb http://us.archive.ubuntu.com/ubuntu precise main
deb-src http://us.archive.ubuntu.com/ubuntu precise main
deb http://us.archive.ubuntu.com/ubuntu precise universe
deb-src http://us.archive.ubuntu.com/ubuntu precise universe
EOF
    ) > /etc/apt/sources.list

    ## Set the Steam Sources
    (cat <<EOF
deb http://repo.steampowered.com/steamrt/ scout main
deb-src http://repo.steampowered.com/steamrt/ scout main
EOF
    ) > /etc/apt/sources.list.d/steamrt.list

    ## Add the Valve apt repo key
    (cat <<EOF
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1.4.11 (GNU/Linux)
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
QpBI5Fwn13V3OM4=
=uSQO
-----END PGP PUBLIC KEY BLOCK-----
EOF
    ) | apt-key add -

    echo "#########"
    echo "## Pass 1"
    echo "# Main installation phase"
    echo "#########"

    ## Update and install build tools
    apt-get -y update
    apt-get install --force-yes -y ubuntu-minimal pkg-config time software-properties-common
    apt-get install --force-yes -y build-essential cmake gdb
    apt-get install --force-yes -y steamrt-dev
    apt-get install --force-yes -y gcc-4.8 g++-4.8

    ## Setup compiler alternatives
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 100
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 100
    update-alternatives --install /usr/bin/cpp cpp-bin /usr/bin/cpp-4.8 100

    ## Set gcc-4.8 as the default
    update-alternatives --set gcc /usr/bin/gcc-4.8
    update-alternatives --set g++ /usr/bin/g++-4.8
    update-alternatives --set cpp-bin /usr/bin/cpp-4.8

    echo "#########"
    echo "## Complete"
    echo "#########"

    ## Run the custom installtion steps
    setupCustom
}

build-runtime
