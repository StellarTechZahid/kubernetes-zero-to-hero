# 04 — Kubernetes YAML

A Kubernetes manifest normally identifies an API version, resource kind, metadata and desired specification.

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: web
  labels:
    app: web
spec:
  replicas: 3
  selector:
    matchLabels:
      app: web
  template:
    metadata:
      labels:
        app: web
    spec:
      containers:
        - name: web
          image: nginx:stable-alpine
          ports:
            - containerPort: 80
```

## The important relationship

The Deployment selector must match the Pod-template labels. If they do not match, the Deployment cannot correctly manage the intended Pods.

## Apply and inspect

```bash
kubectl apply -f deployment.yaml
kubectl diff -f deployment.yaml
kubectl get deployment web -o yaml
kubectl rollout status deployment/web
```

## Multi-document YAML

Use `---` to place multiple Kubernetes resources in one file. Keep related resources together when it improves readability.

## Production habits

Avoid copying YAML blindly. Understand every field that affects scheduling, networking, storage, identity, security and lifecycle. Prefer explicit configuration for production-critical behavior.

## Lab

Write a Deployment and Service by hand. Apply them, inspect the generated object, change replicas from 3 to 5, apply again, and verify the rollout.
