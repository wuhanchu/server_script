#!/bin/bash

sudo yum install git python
sudo pip install docker -i https://mirrors.aliyun.com/pypi/simple
git clone https://github.com/silenceshell/docker_mirror.git
sudo python ./docker_mirror/docker_mirror.py