# Microservices
microservices developed in flask on an application server into docker with nginx as a web server and proxy_reverse

# Requirements
* docker
* docker-machine
* docker-compose

# Run
```
$ docker-machine create <name-container>
```
```
$ eval $(docker-machine env <name-container>)
```

```
$ docker-compose --file docker-compose.yml up
```
