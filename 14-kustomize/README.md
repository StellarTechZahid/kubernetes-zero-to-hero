# 14 — Kustomize

Kustomize lets you customize Kubernetes manifests without turning them into a general-purpose template language. It is integrated into `kubectl` through `kubectl apply -k`.

## Base and overlay

A common structure is:

```text
base/
  deployment.yaml
  service.yaml
  kustomization.yaml
overlays/
  dev/
    kustomization.yaml
  production/
    kustomization.yaml
```

## Example

```yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
  - deployment.yaml
  - service.yaml
namePrefix: demo-
```

## Commands

```bash
kubectl kustomize overlays/dev
kubectl diff -k overlays/dev
kubectl apply -k overlays/dev
```

Use overlays for environment differences that are meaningful and controlled. Do not create a maze of patches that makes the final rendered configuration impossible to understand.

## Lab

Create a base application and two overlays. Change replica count and configuration between development and production, render both outputs, compare them, and apply the development overlay to a local cluster.
