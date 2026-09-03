# Hands-on Labs

Labs are designed to be executed, not just read.

## Lab 01 — First cluster

Create a local cluster, inspect nodes, namespaces and system Pods.

**Success:** you can identify the control-plane-facing API endpoint and worker node state.

## Lab 02 — Deployment lifecycle

Create three replicas, update the image, watch a rollout, break it, inspect events and roll back.

## Lab 03 — Service discovery

Deploy a backend and a temporary curl Pod. Resolve the Service through cluster DNS and test HTTP connectivity.

## Lab 04 — Configuration

Inject non-sensitive configuration with ConfigMap and a fake credential with Secret. Rotate the Secret and document restart/reload behavior.

## Lab 05 — Storage

Create a PVC, write data, replace the Pod and verify the claim-backed data.

## Lab 06 — Network isolation

Start with connectivity, add default-deny ingress, then add the minimum frontend-to-backend rule.

## Lab 07 — Scheduling

Use labels, taints/tolerations and topology constraints. Explain why every Pod landed where it did.

## Lab 08 — Observability

Collect application logs, resource metrics and Kubernetes events. Create a small incident timeline.

## Lab 09 — GitOps drift

Deploy declaratively, mutate the workload manually, observe drift and restore the desired state.

## Lab 10 — Production review

Take a sample application and produce a readiness review covering availability, security, observability, backup, recovery, scaling and cost.

## Lab method

For every lab record:

- Goal
- Prerequisites
- Environment/version
- Commands
- Expected output
- Actual output
- Failure introduced
- Evidence collected
- Root cause
- Fix
- Verification
- Cleanup
- Lessons learned
