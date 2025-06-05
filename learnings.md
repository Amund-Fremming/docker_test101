# Learning

## Build an image and run a container

_Build an image_

```sh
docker login
docker build -t <tag_name> <path_to_dockerfile>
```

_Managing the container_

```sh
docker run -p <any_computer_port_forwarded_to>:<container_defined_port> <image_name>
docker stop <container_name_or_id>
docker rm $(docker ps -a -q)
```

## Run multiple containers

To achieve this we need to create a compose.yaml file to describe our servcies or containers.

```sh
docker compose up
docker compose down
```
