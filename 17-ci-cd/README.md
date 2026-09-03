# 17 — CI/CD with Kubernetes

A reliable delivery pipeline separates build, test, artifact creation, deployment and verification.

## Reference flow

```text
Git push
  ↓
CI: lint + test + security checks
  ↓
Build container image
  ↓
Scan + publish immutable artifact
  ↓
Update deployment configuration
  ↓
CD/GitOps controller reconciles
  ↓
Rollout + health verification
```

## GitHub Actions principles

- Use least-privilege workflow permissions.
- Do not store credentials in source code.
- Prefer short-lived cloud identity federation over long-lived static keys when supported.
- Pin critical third-party actions according to your organization's supply-chain policy.
- Build once and promote the same artifact across environments.

## Kubernetes deployment safety

Use readiness probes, rollout status checks, controlled update strategies and a tested rollback path. A green build is not proof that the application is healthy in a cluster.

## Lab

Create a workflow that validates Kubernetes YAML, builds a container, publishes it to a registry, updates an environment manifest, and verifies rollout status against a disposable cluster or staging environment.
