# 10 — Kubernetes Networking

Kubernetes networking becomes easier when you separate four questions:

1. How does one container reach another container?
2. How does one Pod reach another Pod?
3. How does a Pod reach a Service?
4. How does external traffic reach the application?

## Pod networking

Kubernetes requires Pod-to-Pod communication without requiring application authors to know which node a Pod runs on. The exact implementation is provided by the cluster network plugin/CNI.

## Service networking

A Service creates a stable virtual endpoint and selects backend Pods. The dataplane implementation can vary by Kubernetes distribution and networking stack.

## NetworkPolicy

NetworkPolicy expresses traffic rules for Pods when the cluster network implementation supports enforcement.

```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: default-deny-ingress
spec:
  podSelector: {}
  policyTypes:
    - Ingress
```

A policy that selects Pods does nothing unless the networking implementation enforces NetworkPolicy. Start with an explicit threat model and allow only required flows.

## Ingress and Gateway API

Ingress provides HTTP/HTTPS routing through an ingress controller. The Gateway API provides a more expressive, role-oriented API for traffic management. Neither object alone is the dataplane; an implementation/controller must process the configuration.

## Debugging

```bash
kubectl get svc
kubectl get endpointslices
kubectl get networkpolicy
kubectl run net-debug --rm -it --image=nicolaka/netshoot --restart=Never -- bash
```

Test DNS, TCP connectivity, HTTP behavior and policy enforcement separately.

## Lab

Deploy a frontend and backend. First allow all traffic. Then add a default-deny policy and explicitly allow frontend-to-backend traffic. Prove that an unrelated test Pod cannot reach the backend.
