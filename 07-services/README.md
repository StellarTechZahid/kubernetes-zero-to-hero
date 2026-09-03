# 07 — Services

Pods are ephemeral and their IP addresses can change. A Service provides a stable virtual endpoint for a set of Pods selected by labels.

## Service types

- `ClusterIP`: reachable inside the cluster; the default.
- `NodePort`: exposes a port on nodes; useful for simple scenarios but usually not the preferred production edge.
- `LoadBalancer`: asks the environment/cloud integration for an external load balancer when supported.
- `ExternalName`: maps a Service name to an external DNS name; it does not create a proxy.

## Service example

```yaml
apiVersion: v1
kind: Service
metadata:
  name: web
spec:
  selector:
    app: web
  ports:
    - port: 80
      targetPort: 80
```

## Debugging service traffic

```bash
kubectl get svc web
kubectl get endpointslices -l kubernetes.io/service-name=web
kubectl run curl --rm -it --image=curlimages/curl --restart=Never -- curl -sS http://web
```

If a Service has no usable endpoints, check its selector against Pod labels, Pod readiness, namespace and port mappings.

## DNS

Within a cluster, Services normally receive DNS names such as `web.default.svc.cluster.local`. Short names work when the caller's DNS search configuration permits them.

## Lab

Deploy two versions of a web workload with different labels. Configure a Service to select only one version. Prove which Pods receive traffic, then change the selector and observe the effect.
