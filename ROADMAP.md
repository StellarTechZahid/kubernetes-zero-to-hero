# Kubernetes Zero to Hero Roadmap

## Level 0 — Foundations
- Linux terminal and processes
- TCP/IP, DNS, HTTP, ports and CIDR
- YAML and JSON
- Containers and images
- Docker/OCI concepts

## Level 1 — Kubernetes Fundamentals
- Cluster architecture
- Control plane and nodes
- API server and declarative state
- `kubectl`
- Namespaces
- Pods
- Labels, selectors and annotations

## Level 2 — Application Delivery
- Deployments
- ReplicaSets
- StatefulSets
- DaemonSets
- Jobs and CronJobs
- Services
- ConfigMaps and Secrets
- Probes and lifecycle hooks
- Resource requests and limits

## Level 3 — Networking and Storage
- Cluster networking model
- DNS and service discovery
- NetworkPolicies
- Ingress and Gateway concepts
- PersistentVolumes, PersistentVolumeClaims and StorageClasses
- CSI architecture

## Level 4 — Scheduling and Security
- Scheduling pipeline
- Taints and tolerations
- Affinity and topology spread
- RBAC
- ServiceAccounts
- Pod Security Standards
- SecurityContext
- Image and supply-chain security
- Secrets management

## Level 5 — Packaging and Operations
- Helm
- Kustomize
- Metrics, logs and traces
- Events and debugging
- HPA/VPA concepts
- Cluster autoscaling
- Rollouts and rollback

## Level 6 — Delivery and Platform Engineering
- CI/CD
- GitHub Actions
- GitOps
- Argo CD
- Operators and CRDs
- Policy as code
- Internal developer platforms

## Level 7 — Production and Cloud
- High availability
- Capacity planning
- Upgrade strategy
- Backup and disaster recovery
- Cost optimization
- EKS, AKS and GKE
- Multi-cluster and multi-region patterns

## Level 8 — Expert
- API machinery
- Controllers and reconciliation
- Scheduling internals
- Admission
- CNI/CSI/CRI architecture
- Performance diagnosis
- Advanced networking
- Platform architecture

## Recommended sequence

Do not rush to managed Kubernetes. First become comfortable creating, inspecting, breaking and repairing workloads on a local cluster. Then repeat the same skills on a managed service.
