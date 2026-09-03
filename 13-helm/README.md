# 13 — Helm

Helm is a package manager and templating/release tool commonly used to distribute Kubernetes applications.

## Core concepts

- **Chart:** package containing templates and metadata.
- **Values:** configurable inputs.
- **Release:** an installed instance of a chart.
- **Template:** Kubernetes manifest generated from chart inputs.

## Commands

```bash
helm version
helm create my-app
helm lint my-app
helm template my-app ./my-app
helm install demo ./my-app
helm list
helm upgrade demo ./my-app
helm history demo
helm rollback demo 1
helm uninstall demo
```

## Production discipline

Do not hide important behavior in complex templates. Keep values documented, defaults safe, names deterministic and rendered output reviewable.

Pin chart dependencies where reproducibility matters and validate rendered manifests before deployment.

## Lab

Create a chart for a Deployment and Service. Add configurable replica count and image settings. Render it with multiple values files, inspect the final YAML, install it, upgrade it and roll it back.
