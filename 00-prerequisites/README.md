# 00 — Prerequisites

Before Kubernetes, build the mental models Kubernetes depends on.

## Linux

Know files, permissions, processes, signals, environment variables, pipes, services and logs.

```bash
pwd
ls -la
ps aux
ss -lntp
curl -I https://example.com
```

## Networking

You should understand IP addresses, CIDR, routes, TCP/UDP, DNS, HTTP, ports and NAT.

A useful progression is:

`client → DNS → IP → TCP connection → HTTP request → application`

## YAML

YAML is indentation-sensitive data. Kubernetes manifests are declarative documents that describe desired state.

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: app-config
data:
  LOG_LEVEL: info
```

## Containers

Learn images, registries, layers, container processes, ports, volumes and the OCI model before learning Kubernetes workloads.

## Readiness check

You are ready for Kubernetes fundamentals when you can explain:

1. What happens when `curl` connects to a service.
2. The difference between a process and a container.
3. Why `127.0.0.1` is not the same as a pod IP.
4. How `/24` describes an IPv4 network.
5. Why declarative configuration is useful for infrastructure.

## Lab

Create a tiny HTTP server, run it in a container, expose its port, inspect the process, then remove it. Repeat without looking at notes.
