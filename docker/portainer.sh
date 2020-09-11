#!/bin/bash
docker run -d -p 31004:9000 -p 32786:32786 -v portainer_data:/data -v /var/run/docker.sock:/var/run/docker.sock --name portainer portainer/portainer:1.23.0 --tunnel-port="32786"
# docker run -d -p 32785:9000 -p 32786:32786 -v portainer_data:/data -v /var/run/docker.sock:/var/run/docker.sock --name portainer    --restart=always portainer/portainer:1.23.0 --tunnel-port="32786"