# Contributing

Thank you for improving Kubernetes Zero to Hero.

## What makes a good contribution?

- A technically correct explanation
- A reproducible command sequence
- A validated Kubernetes manifest
- A useful failure scenario and diagnosis
- A security or production improvement
- A correction for an API or version change
- A new lab that teaches one measurable skill

## Lesson standard

Every substantial lesson should explain **what**, **why**, **how**, verification, common mistakes, troubleshooting, security and production considerations.

## Manifest standard

- Prefer stable Kubernetes APIs.
- Pin or clearly document image versions when reproducibility matters.
- Never commit credentials, tokens, private keys or kubeconfig files.
- Add resource requests/limits when a workload is intended as a production example.
- Explain assumptions such as CNI, CSI, ingress controller or cloud provider requirements.

## Pull requests

Keep PRs focused. Explain what changed, how it was validated, and which Kubernetes/runtime version was used for testing.
