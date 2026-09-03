# Kubernetes Zero to Hero

> Learn Kubernetes from Zero to Production — Concepts, Commands, YAML, Hands-On Labs, Projects, Troubleshooting, Security, DevOps, GitOps and Real-World Architecture.

[![Kubernetes](https://img.shields.io/badge/Kubernetes-learning-blue?logo=kubernetes)](https://kubernetes.io/)
[![Learning Path](https://img.shields.io/badge/path-zero--to--hero-success)](#-learning-path)
[![Labs](https://img.shields.io/badge/hands--on-labs-orange)](#-hands-on-labs)

A structured, hands-on Kubernetes curriculum designed to take you from **zero knowledge to production-grade Kubernetes engineering**.

**Learn → Build → Break → Debug → Secure → Deploy → Operate**

This repository is intentionally more than notes. It is a practical Kubernetes school: lessons, commands, manifests, labs, failure scenarios, projects, troubleshooting playbooks, security guidance, cloud patterns, certification preparation, and interview questions.

## Why this repository exists

If you search for *Kubernetes tutorial*, *learn Kubernetes*, *Kubernetes roadmap*, *Kubernetes labs*, *Kubernetes YAML examples*, *Kubernetes networking*, *Kubernetes security*, *Kubernetes troubleshooting*, *Kubernetes production*, *Helm*, *GitOps*, *EKS*, *AKS*, *GKE*, *CKA*, *CKAD*, or *CKS*, this repository is organized to give you a clear path instead of a pile of disconnected notes.

## Learning path

| Stage | Focus | Outcome |
|---|---|---|
| 00 | Prerequisites | Linux, networking, YAML, containers and CLI foundations |
| 01–04 | Containers + Kubernetes foundations | Understand the platform and use `kubectl` confidently |
| 05–09 | Workloads, services, config, storage | Deploy real applications correctly |
| 10–12 | Networking, scheduling, security | Reason about traffic, placement and isolation |
| 13–16 | Helm, Kustomize, observability, autoscaling | Operate reusable and observable applications |
| 17–19 | CI/CD, GitOps, operators | Automate delivery and platform workflows |
| 20–23 | Production, cloud, advanced, platform engineering | Design and operate production Kubernetes |
| Labs | Hands-on challenges | Prove each concept by doing it |
| Projects | Progressive builds | Build portfolio-grade systems |
| Troubleshooting | Break/fix scenarios | Develop SRE-style debugging skills |
| Certification | KCNA, CKA, CKAD, CKS | Prepare with practical objectives |

## Repository map

- [Roadmap](ROADMAP.md)
- [Prerequisites](00-prerequisites/README.md)
- [Containers](01-containers/README.md)
- [Kubernetes Fundamentals](02-kubernetes-fundamentals/README.md)
- [kubectl](03-kubectl/README.md)
- [YAML](04-yaml/README.md)
- [Pods](05-pods/README.md)
- [Workloads](06-workloads/README.md)
- [Services](07-services/README.md)
- [Configuration](08-configuration/README.md)
- [Storage](09-storage/README.md)
- [Networking](10-networking/README.md)
- [Scheduling](11-scheduling/README.md)
- [Security](12-security/README.md)
- [Helm](13-helm/README.md)
- [Kustomize](14-kustomize/README.md)
- [Observability](15-observability/README.md)
- [Autoscaling](16-autoscaling/README.md)
- [CI/CD](17-ci-cd/README.md)
- [GitOps](18-gitops/README.md)
- [Operators and CRDs](19-operators/README.md)
- [Production Kubernetes](20-production/README.md)
- [Cloud Kubernetes](21-cloud/README.md)
- [Advanced Kubernetes](22-advanced/README.md)
- [Platform Engineering](23-platform-engineering/README.md)
- [Hands-on Labs](labs/README.md)
- [Projects](projects/README.md)
- [Troubleshooting Academy](troubleshooting/README.md)
- [Interview Preparation](interview/README.md)
- [Certification Preparation](certification/README.md)
- [Cheat Sheets](cheatsheets/README.md)
- [Glossary](GLOSSARY.md)
- [FAQ](FAQ.md)

## Quick start

You can learn locally with Docker Desktop, Rancher Desktop, Minikube, kind, or a cloud Kubernetes service. For most labs, **kind** is a lightweight default because it runs Kubernetes nodes as containers.

```bash
kubectl version --client
kind version
kind create cluster --name k8s-zero-to-hero
kubectl cluster-info
kubectl get nodes
kubectl create deployment web --image=nginx:stable-alpine
kubectl expose deployment web --port=80 --type=ClusterIP
kubectl get deploy,pods,svc
kind delete cluster --name k8s-zero-to-hero
```

> **Safety:** Never paste real credentials into manifests, examples, issues, or commits. Use placeholders and Kubernetes Secrets or an external secret manager where appropriate.

## What you will build

1. Your first Kubernetes workload
2. A resilient web application with Deployments and Services
3. Configuration and secret management
4. Persistent application storage
5. Ingress-based application delivery
6. Observability with metrics, logs and traces
7. Helm-packaged application
8. GitHub Actions CI/CD pipeline
9. GitOps deployment with Argo CD
10. Production-style multi-service platform with security, autoscaling, policy and disaster-recovery considerations

## Hands-on lab philosophy

Every major topic follows:

**Understand → Apply → Verify → Break → Diagnose → Fix → Harden → Explain**

Failure is part of the curriculum. You should be able to answer not only *“How do I deploy this?”* but also *“Why did this fail, how did I prove the cause, and how do I prevent it?”*

## Version awareness

Kubernetes evolves quickly. Examples in this repository should use currently supported stable APIs and explicitly identify version-sensitive behavior. When a feature depends on a particular Kubernetes version, container runtime, ingress implementation, CNI, CSI driver, or cloud provider, the lesson states that dependency.

## Contribution

See [CONTRIBUTING.md](CONTRIBUTING.md). Good contributions include correcting commands, improving explanations, adding validated labs, fixing manifests, adding troubleshooting scenarios, and updating version-sensitive guidance.

## License

This repository is intended as an open educational resource. See [LICENSE](LICENSE).
