# 21 — Kubernetes in the Cloud

Managed Kubernetes reduces the operational burden of running control-plane infrastructure, but it does not remove Kubernetes engineering responsibilities.

## AWS EKS

Study:

- Cluster and node architecture
- IAM integration and workload identity
- VPC/CNI behavior
- Load balancers and ingress
- EBS/EFS storage integrations
- Autoscaling
- Observability and upgrades

## Azure AKS

Study:

- Azure identity integration
- Virtual networking
- Managed identities/workload identity
- Azure Load Balancer/Application Gateway integrations
- Azure Disk/Azure Files storage
- Autoscaling and monitoring

## Google GKE

Study:

- Google Cloud identity and workload identity
- VPC networking
- Load balancing
- Persistent Disk/File storage
- Autoscaling and operations

## Cloud-neutral rule

Learn the Kubernetes API first, then map it to provider-specific implementations. The same Deployment can run on different clouds, while networking, identity, storage, load balancing and node management can differ substantially.

## Cloud lab sequence

1. Deploy a small workload locally.
2. Deploy the same workload to one managed Kubernetes service.
3. Compare identity, networking, storage and load balancing.
4. Measure operational and financial differences.
5. Document what is portable and what is provider-specific.
