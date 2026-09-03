# 06 — Workloads

Kubernetes workload resources manage Pods for different lifecycle needs.

## Deployment

Use Deployments for stateless applications.

```bash
kubectl create deployment web --image=nginx:stable-alpine
kubectl scale deployment web --replicas=3
kubectl rollout status deployment/web
kubectl rollout history deployment/web
kubectl rollout undo deployment/web
```

A Deployment manages ReplicaSets, which manage Pods. This indirection enables controlled rolling updates and rollback.

## StatefulSet

StatefulSets are for applications where stable identities and/or stable storage associations matter. They are commonly used for stateful systems, but a StatefulSet does not magically make an application distributed or safe.

## DaemonSet

DaemonSets ensure a Pod is scheduled on eligible nodes. Typical examples include node-level agents such as log collectors or monitoring agents.

## Jobs and CronJobs

Jobs represent finite work. CronJobs create Jobs on a schedule.

```yaml
apiVersion: batch/v1
kind: Job
metadata:
  name: hello
spec:
  backoffLimit: 3
  template:
    spec:
      restartPolicy: Never
      containers:
        - name: task
          image: busybox:1.36
          command: ["sh", "-c", "echo hello; sleep 2"]
```

## Update strategy

For a Deployment, rolling updates trade availability and speed. Configure `maxUnavailable` and `maxSurge` according to application capacity and failure tolerance.

## Lab

Deploy nginx, perform an image update, watch the ReplicaSets change, intentionally introduce a broken image, diagnose the rollout, and roll back safely.
