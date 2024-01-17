This is an ARM64 / ARMv8 docker image to run raumserver e.g. on a RaspberryPi

# docker-node-raumserver [![Docker Pulls](https://img.shields.io/docker/pulls/jch2k/node-raumserver.svg)](https://registry.hub.docker.com/u/jch2k/node-raumserver/)

Raumserver is a HTTP REST API daemon for RF devices created by ChriD (see https://github.com/ChriD/node-raumserver). It can be installed on RF devices itself or in the same network with communication via UPnP. This image uses s6-overlay to create the nodejs process and a nginx process, which proxy passes /raumserver to the app and serves /var/www/html under / by default. The node app needs to bind to the host network due to UPnP communication, therefor the default nginx listens on the unusual port 3535.

## Usage
```
docker run --net=host jch2k/node-raumserver
```

### Important:
Use `--net=host` (or in compose: `network_mode: host`) so raumserver can see the UPnP Raumfeld devices, which are not using TCP or UDP!


## Command reference
https://github.com/ChriD/Raumserver/wiki/Available-control-and-data-requests
