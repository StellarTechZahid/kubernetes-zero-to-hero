# kubectl Cheat Sheet

## Inspect

```bash
kubectl get nodes
kubectl get pods -A
kubectl get deploy,rs,svc
kubectl describe pod POD
kubectl get pod POD -o yaml
kubectl get events --sort-by=.lastTimestamp
```

## Workloads

```bash
kubectl create deployment web --image=nginx:stable-alpine
kubectl scale deployment web --replicas=3
kubectl rollout status deployment/web
kubectl rollout history deployment/web
kubectl rollout undo deployment/web
```

## Logs and exec

```bash
kubectl logs POD
kubectl logs POD --previous
kubectl logs POD -c CONTAINER
kubectl exec -it POD -- sh
```

## Configuration

```bash
kubectl get configmap
kubectl get secret
kubectl explain deployment.spec.template.spec.containers
```

## Apply

```bash
kubectl apply -f manifest.yaml
kubectl diff -f manifest.yaml
kubectl delete -f manifest.yaml
```

## Debugging rule

Do not memorize commands without understanding what evidence each command provides.
