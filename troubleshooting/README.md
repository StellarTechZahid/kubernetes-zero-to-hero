# Kubernetes Troubleshooting Academy

The goal is to diagnose from evidence rather than guess.

## The six-step method

**Break → Observe → Hypothesize → Diagnose → Fix → Verify**

## Pod not starting

Check:

```bash
kubectl get pod POD -o wide
kubectl describe pod POD
kubectl get events --sort-by=.lastTimestamp
```

Common causes include invalid images, insufficient resources, missing configuration, scheduling constraints and admission policy.

## Pod running but not Ready

Inspect readiness probes, application logs, ports, dependencies and Service selection.

```bash
kubectl describe pod POD
kubectl logs POD
kubectl get endpointslices
```

## Service has no traffic

Check selector → labels → readiness → EndpointSlices → Service ports → target ports → DNS → network policy → application listener.

## Pod is Pending

Check scheduling events, requests, node capacity, taints, affinity and topology constraints.

## OOMKilled

Determine whether the container exceeded its memory limit or the node experienced pressure. Compare requests/limits with actual consumption and application behavior.

## CrashLoopBackOff

Inspect current and previous logs:

```bash
kubectl logs POD --previous
kubectl describe pod POD
```

Then identify whether the process exits, fails a probe, lacks configuration, cannot reach a dependency or is being terminated by the runtime.

## Incident discipline

Record timestamps, symptoms, evidence, changes and recovery. Never make an undocumented production change simply to “see if it works.”
