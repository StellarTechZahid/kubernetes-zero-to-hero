# 12 — Kubernetes Security

Secure Kubernetes by reducing identity privileges, isolating workloads, protecting secrets, hardening containers and controlling the software supply chain.

## RBAC

RBAC maps identities to permissions through Roles/ClusterRoles and bindings.

```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  namespace: demo
  name: pod-reader
rules:
  - apiGroups: [""]
    resources: ["pods"]
    verbs: ["get", "list", "watch"]
```

Follow least privilege. Avoid giving applications cluster-admin unless there is a documented, exceptional requirement.

## ServiceAccounts

Pods can use ServiceAccounts for API identity. Disable or avoid unnecessary API credentials and scope permissions narrowly.

## Pod Security Standards

Use namespace-level Pod Security admission labels where appropriate and understand the difference between baseline and restricted controls.

## SecurityContext

```yaml
securityContext:
  runAsNonRoot: true
  seccompProfile:
    type: RuntimeDefault
```

Container images should also be minimal, maintained and scanned. Prefer non-root application users when supported.

## Supply chain

A secure deployment path considers source control, dependencies, image build, registry, provenance/signing, vulnerability scanning and admission controls. Do not treat image scanning as a complete security strategy.

## Lab

Deploy a workload as non-root, create a least-privilege ServiceAccount, apply namespace security controls, then attempt operations that should be denied. Record exactly which control blocked each action.
