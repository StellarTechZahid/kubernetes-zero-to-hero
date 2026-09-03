# 01 — Containers

Kubernetes orchestrates containers; it does not replace container fundamentals.

## Learn first

- OCI images and layers
- Registries
- Container processes
- Namespaces and cgroups at a conceptual level
- Port publishing
- Volumes and filesystem layers
- Environment variables
- Health checks

## Mental model

A container is an isolated process environment built from an image. The process can still fail, consume CPU/memory, open network connections and write data.

## Essential Docker workflow

```bash
docker build -t hello-k8s:dev .
docker run --rm -p 8080:80 hello-k8s:dev
docker ps
docker logs CONTAINER
docker inspect CONTAINER
docker exec -it CONTAINER sh
docker stop CONTAINER
```

The exact runtime used by Kubernetes can vary. Focus on OCI image behavior and Kubernetes abstractions rather than assuming Kubernetes is simply Docker at scale.

## Lab

Build a tiny HTTP application, containerize it, inspect the image layers, run it, test it with `curl`, and deliberately make its process exit. Explain what the runtime reports.
