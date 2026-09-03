# 11 — Scheduling

The Kubernetes scheduler assigns unscheduled Pods to feasible nodes and scores candidates according to scheduling rules and plugins.

## Requests matter

A Pod's resource requests influence whether a node is considered feasible. This is one reason requests should represent realistic baseline consumption.

## Taints and tolerations

A taint can repel Pods from a node. A toleration allows a Pod to be considered despite a matching taint; it does not force placement.

```yaml
tolerations:
  - key: dedicated
    operator: Equal
    value: batch
    effect: NoSchedule
```

## Affinity and anti-affinity

Node affinity expresses preferences or requirements about node labels. Pod affinity/anti-affinity expresses relationships between Pods.

## Topology spread

Topology spread constraints help distribute replicas across failure domains such as zones or nodes, depending on the topology labels available in the cluster.

## Debugging Pending Pods

```bash
kubectl get pod POD -o wide
kubectl describe pod POD
kubectl get nodes --show-labels
kubectl get nodes
```

Look at scheduling events and compare Pod requirements with actual node capacity, labels, taints and topology.

## Lab

Create a small cluster, label nodes, taint one node, deploy workloads with and without tolerations, and explain every scheduling decision from events and object configuration.
