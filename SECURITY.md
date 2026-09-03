# Security Policy

## Educational repository safety

Examples are designed to be safe to reproduce, but Kubernetes is powerful infrastructure. Run labs in disposable clusters where possible.

Never commit:

- Cloud credentials
- API tokens
- Private keys
- Real passwords
- Production kubeconfigs
- Personal data

Use placeholders such as `REPLACE_ME` and document how learners should supply values locally.

## Reporting a security issue

Do not publish an active vulnerability with exploitable credentials or sensitive details in a public issue. Report the problem privately through the repository's available GitHub security reporting mechanism when enabled.
