# 05 — Pods

A Pod is the smallest deployable unit in Kubernetes. It represents one or more tightly coupled containers that share networking and can share storage volumes.

## Basic Pod

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: web
  labels:
    app: web
spec:
  containers:
    - name: web
      image: nginx:stable-alpine
      ports:
        - containerPort: 80
```

Apply and inspect:

```bash
kubectl apply -f pod.yaml
kubectl get pod web -o wide
kubectl describe pod web
kubectl logs web
```

## Pod lifecycle

A Pod can move through phases such as `Pending`, `Running`, `Succeeded` and `Failed`. Conditions such as `Ready` provide additional detail. A phase is not a complete health model.

## Probes

- **Startup probe:** gives slow-starting applications time to initialize.
- **Readiness probe:** determines whether the Pod should receive traffic.
- **Liveness probe:** detects an unhealthy process that should be restarted.

Example:

```yaml
readinessProbe:
  httpGet:
    path: /healthz
    port: 8080
  initialDelaySeconds: 5
  periodSeconds: 10
```

Do not use a liveness probe merely because an endpoint exists. A badly designed liveness check can cause restart loops.

## Resources

```yaml
resources:
  requests:
    cpu: 100m
    memory: 128Mi
  limits:
    cpu: 500m
    memory: 256Mi
```

Requests influence scheduling; limits constrain resource usage according to the resource and cluster configuration.

## Lab

Deploy a Pod with a readiness endpoint, watch readiness change, inspect its events, then deliberately break the probe and diagnose the result.
