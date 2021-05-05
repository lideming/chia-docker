# Chia Blockchain in Docker

## Get the Docker Image

### Pull from Docker Hub

```shell
docker pull yuuza/chia
```

### Or Build it Locally

```shell
docker build -t yuuza/chia .
```

## Configure the Plots Path

Edit the `.env` file.

## Create and run the Container

```shell
docker-compose run chia bash
```

You will enterd the bash shell of the just-created container.

To see all containers, run `docker-compose ps -a`.

To run another shell in a container, run `docker exec -it NAME bash`, where `NAME` is the container name.

## Credit
This repo is based on https://gist.github.com/snikch/ab15159e633d21619bdf6a056bec8830
