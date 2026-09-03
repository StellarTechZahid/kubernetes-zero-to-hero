# 20 — Production Kubernetes

Production Kubernetes is primarily a systems-engineering problem, not a YAML problem.

## High-availability checklist

- Multiple control-plane components where the distribution supports them
- Redundant worker capacity
- Workload replicas across appropriate failure domains
- PodDisruptionBudgets for carefully selected workloads
- Topology-aware placement
- Tested ingress/load-balancing paths
- Backups and restore tests

## Reliability

Define SLOs before choosing infrastructure. For an HTTP service, useful indicators can include availability, latency and error rate. Capacity planning should account for normal load, bursts, node failures and maintenance.

## Upgrades

Maintain a tested upgrade path. Review Kubernetes version compatibility, API removals, admission controllers, CRDs, CSI/CNI components, ingress implementations and application behavior before production changes.

## Disaster recovery

Backups are only useful if restore works. Document recovery objectives, dependencies, data consistency requirements and ownership. Regularly perform recovery exercises.

## Cost and FinOps

Track node utilization, requested versus used resources, storage, load balancers and egress. Over-requesting CPU/memory can waste capacity; under-requesting can create scheduling and reliability problems.

## Production readiness review

Before launch, answer:

- What fails first?
- How do we detect it?
- How do we mitigate it?
- How do we roll back?
- How do we restore data?
- Who owns the incident?
- What is the expected cost at normal and peak load?
