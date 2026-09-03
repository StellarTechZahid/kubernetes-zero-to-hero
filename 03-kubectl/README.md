# 03 — kubectl

`kubectl` is the primary command-line client for the Kubernetes API.

## Essential commands

```bash
kubectl cluster-info
kubectl get nodes
kubectl get pods -A
kubectl get deploy,svc
kubectl describe pod POD_NAME
kubectl logs POD_NAME
kubectl logs POD_NAME --previous
kubectl exec -it POD_NAME -- sh
kubectl get pod POD_NAME -o yaml
kubectl explain deployment.spec.template.spec.containers
```

## Contexts and namespaces

```bash
kubectl config get-contexts
kubectl config current-context
kubectl config use-context CONTEXT
kubectl get pods -n kube-system
```

Be careful when switching contexts. A command that is harmless in a lab can be destructive against production.

## Debugging workflow

1. Identify the namespace and resource.
2. `get` the object and its status.
3. `describe` it for events and conditions.
4. Inspect logs.
5. Inspect the rendered YAML.
6. Check related Services, Endpoints/EndpointSlices, ConfigMaps and Secrets.
7. Test connectivity from an appropriate location.
8. Change one thing at a time.
9. Verify the desired state converged.

## Output formats

```bash
kubectl get pods -o wide
kubectl get pod POD_NAME -o json
kubectl get pod POD_NAME -o yaml
kubectl get pods --sort-by=.status.startTime
```

## Lab: investigate a failing Pod

Create a Pod with a deliberately invalid image, observe `ImagePullBackOff`, inspect events with `kubectl describe`, correct the image, and verify the Pod becomes Ready.
