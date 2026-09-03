# 08 — Configuration

Kubernetes separates application configuration from container images using resources such as ConfigMaps and Secrets.

## ConfigMap

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: app-config
data:
  APP_MODE: production
  LOG_LEVEL: info
```

Use it as environment variables or mounted files.

## Secret

```bash
kubectl create secret generic app-secret \
  --from-literal=API_KEY=REPLACE_ME
```

Kubernetes Secret objects are designed for sensitive configuration, but storage and access controls still matter. Base64 encoding is **not encryption**.

## Environment variables

```yaml
envFrom:
  - configMapRef:
      name: app-config
```

For sensitive values, reference a Secret rather than embedding credentials in a Deployment manifest.

## External secret management

Production environments may integrate Kubernetes with cloud secret stores or dedicated secret-management systems. Evaluate encryption at rest, RBAC, rotation, auditability and application reload behavior.

## Lab

Run an application using a ConfigMap for non-sensitive settings and a Secret for a fake API key. Rotate the key and verify how your application receives the new value.
