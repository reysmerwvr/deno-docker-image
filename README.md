# Deno Docker Image

Docker Image for [Deno]

## Requirements

This image is based on the following docker images:

- [Alpine GNU C library (glibc) Docker image](https://github.com/Docker-Hub-frolvlad/docker-alpine-glibc)

- [Deno Docker](https://github.com/hayd/deno-docker)

## Run locally

To run `server.ts` from your working directory:

```sh
docker run -it --init -p 8000:8000 -v $PWD:/app reysmer/alpine-deno:1.0.2 --allow-net /app/server.ts
```

Here, `-p 8000:8000` maps port 8000 on the container to 8000 on the host,
`-v $PWD:/app` mounts the host working directory to `/app` on the container, and
`--allow-net /app/server.ts` is passed to deno on the container.

### Todos

- Write tests
- Add code comments

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does 
its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [Deno]: <https://deno.land/>