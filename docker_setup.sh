#!/bin/sh

which docker > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Docker has been installed"
else
    # docker install
    apt-get -y install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    apt-key fingerprint 0EBFCD88
    add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
    apt-get update
    apt-get -y install docker-ce
    echo "Docker install succeded!"
fi

which docker-compose > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Docker-Compose has been installed"
else
    # docker-compose install
    curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    echo "Docker-Compose install succeded!"
fi