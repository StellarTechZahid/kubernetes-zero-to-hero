# 18 — GitOps

GitOps treats Git as the source of truth for desired application state. A controller continuously compares declared state with cluster state and reconciles differences.

## Core loop

```text
Git repository → desired manifests → GitOps controller → Kubernetes API
                         ↑                  ↓
                         └──── drift ──────┘
```

## Why GitOps?

- Auditable changes through Git history
- Pull-request review before deployment
- Reconciliation instead of one-off imperative deployments
- Clear environment configuration
- Easier rollback to a previous declared state

## Argo CD pattern

A common structure is:

```text
apps/
  frontend/
  backend/
environments/
  dev/
  staging/
  production/
```

Argo CD is one implementation of GitOps. Learn the underlying reconciliation model before learning the product commands.

## Drift exercise

Deploy an application through GitOps, manually change a field with `kubectl`, observe the drift, and study how reconciliation restores the declared state. Do this only in a disposable environment.

## Production considerations

Protect production branches, review manifests, separate duties, restrict controller permissions, secure repository credentials, and define what happens when Git or the controller is unavailable.
