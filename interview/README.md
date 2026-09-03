# Kubernetes Interview Preparation

## Fundamentals

**Q: What is a Pod?**  
A: The smallest deployable Kubernetes unit, containing one or more tightly coupled containers that share networking and can share volumes.

**Q: Deployment vs StatefulSet?**  
A: Deployment is generally for stateless replicas and rolling updates; StatefulSet provides stable identities and storage associations for workloads that need them.

**Q: Why use a Service?**  
A: To provide a stable virtual endpoint and select backend Pods despite Pod churn.

## Networking

**Q: Why can a Service have no endpoints?**  
A: Its selector may not match Pods, Pods may be unready, ports may be wrong, or the namespace/resource relationship may be incorrect.

**Q: What does NetworkPolicy do?**  
A: It declares allowed traffic for selected Pods when the cluster's networking implementation supports enforcement.

## Operations

**Q: How do you debug CrashLoopBackOff?**  
A: Inspect Pod state/events, current and previous logs, command/args, probes, configuration, dependencies and resource constraints; form a hypothesis and verify it.

**Q: How do you safely roll back a Deployment?**  
A: Inspect rollout history, identify the known-good revision, use the Deployment rollback mechanism, watch rollout status and verify application health.

## Architecture

**Q: What is reconciliation?**  
A: A controller observes desired and actual state and repeatedly takes actions to converge actual state toward desired state.

**Q: What changes between managed Kubernetes providers?**  
A: Kubernetes APIs remain broadly portable, while identity, networking, storage, load balancing, node management, observability and upgrade workflows are provider-specific.

## Senior-level questions

- Design a multi-zone service with graceful disruption handling.
- Diagnose a cluster where API requests are slow but applications remain healthy.
- Design a secure GitOps model for production.
- Explain how CNI, CSI and CRI fit into Kubernetes.
- Design backup and disaster recovery for a stateful workload.
- Build a cost model for a growing cluster.
- Explain how you would migrate from one Kubernetes version to another safely.
