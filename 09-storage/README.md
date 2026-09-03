# 09 — Storage

Containers are ephemeral. Kubernetes storage abstractions let applications request durable storage without hard-coding a specific disk implementation.

## Core objects

- **PersistentVolume (PV):** cluster storage resource.
- **PersistentVolumeClaim (PVC):** workload request for storage.
- **StorageClass:** describes dynamically provisioned storage behavior.
- **CSI:** standard interface used by storage drivers to integrate external storage systems.

## PVC example

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: app-data
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
```

The available access modes and behavior depend on the storage driver. Do not assume `ReadWriteOnce`, `ReadWriteMany`, or `ReadOnlyMany` have identical semantics across implementations.

## Stateful applications

StatefulSet can associate stable volume claims with stable Pod identities. Data durability still depends on the underlying storage system and backup strategy.

## Production checklist

- Define backup and restore procedures.
- Understand reclaim policy.
- Monitor capacity and I/O.
- Test failure and rescheduling behavior.
- Document encryption and access controls.
- Test restore, not only backup.

## Lab

Create a PVC on a local cluster, mount it into a Pod, write a file, delete the Pod, create another Pod using the claim, and verify persistence. Then document what happens when the claim is deleted.
