# 16 — Autoscaling

Autoscaling changes workload or infrastructure capacity in response to demand or policy.

## Horizontal Pod Autoscaler

HPA adjusts replica count based on configured metrics.

```bash
kubectl autoscale deployment web --min=2 --max=10 --cpu-percent=70
kubectl get hpa
kubectl describe hpa web
```

Modern HPA configurations are commonly expressed declaratively with `autoscaling/v2`, especially when using multiple metrics or behavior controls.

An HPA depends on usable metrics. CPU utilization relative to resource requests is not meaningful if requests are missing or poorly chosen.

## Vertical scaling

Vertical Pod Autoscaler can recommend or apply resource changes depending on its configuration and deployment mode. It should be evaluated carefully for workloads that restart when resources change.

## Cluster autoscaling

Managed or cluster-level autoscaling adds/removes nodes when Pods cannot be scheduled or nodes are underutilized, depending on the implementation. Pod requests, disruption policies and topology constraints influence its behavior.

## Lab

Create an HPA-backed Deployment, generate load, watch metrics and replicas change, then remove or distort resource requests and explain why autoscaling behavior becomes unreliable.
