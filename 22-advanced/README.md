# 22 — Advanced Kubernetes

## API machinery

Understand API resources, groups, versions, authentication, authorization, admission, persistence and watch-based clients.

## Controllers

Controllers observe resources and reconcile desired state. This model powers core Kubernetes workloads and extensions.

## Admission

Admission happens after authentication/authorization and before an object is persisted. Admission controllers can validate or mutate requests according to cluster policy.

## CNI, CSI and CRI

- **CNI:** networking interface between Kubernetes/container runtime integration and network plugins.
- **CSI:** storage interface for volume plugins.
- **CRI:** runtime interface used by kubelet to communicate with container runtimes.

These interfaces explain why Kubernetes can work with different underlying implementations.

## Performance engineering

When a cluster is slow, separate API-server latency, scheduler behavior, kubelet/runtime behavior, networking, storage and application performance. Measure before changing configuration.

## Advanced networking

Study eBPF-based networking, service routing implementations, network policy enforcement, Gateway API and multi-cluster connectivity only after mastering the basic Kubernetes networking model.

## Expert exercise

Pick one request such as `kubectl create deployment`. Trace it conceptually from client request through API authentication/admission, persistence, controller reconciliation, scheduling, kubelet and container runtime until the application becomes Ready.
