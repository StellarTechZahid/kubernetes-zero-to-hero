# 15 — Observability

Kubernetes operations require three complementary signals:

- **Metrics:** numeric measurements over time.
- **Logs:** event/detail records emitted by applications and components.
- **Traces:** request paths across distributed services.

## First-response commands

```bash
kubectl get pods -A
kubectl get events --sort-by=.lastTimestamp
kubectl describe pod POD
kubectl logs POD --all-containers
kubectl top pods
kubectl top nodes
```

`kubectl top` requires a metrics provider such as Metrics Server. It is not automatically available in every cluster.

## Golden signals

For request-serving systems, start with latency, traffic, errors and saturation. Pair dashboards with actionable alerts; avoid alerting on every small fluctuation.

## Application observability

Expose useful health and metrics endpoints, include request correlation identifiers where appropriate, and write structured logs with stable fields. Never log secrets or sensitive payloads.

## Lab

Deploy a workload, generate traffic, collect logs and resource metrics, introduce a CPU-heavy endpoint, observe saturation, and explain the change using evidence from at least two signals.
