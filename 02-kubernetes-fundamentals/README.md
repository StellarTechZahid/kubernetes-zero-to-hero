# 02 — Kubernetes Fundamentals

## What Kubernetes is

Kubernetes is a platform for managing containerized workloads through a declarative API. You describe desired state; controllers continuously work to make the observed cluster converge toward that state.

## Core architecture

At a high level:

```text
                kubectl / clients
                       |
                 Kubernetes API
                       |
        +--------------+--------------+
        |                             |
   control plane                 worker nodes
        |                             |
 API server                    kubelet + runtime
 scheduler                     pods + containers
 controllers
        |
     state store
```

The exact control-plane topology varies by distribution and managed service.

## Desired state and reconciliation

A Deployment with three replicas does not mean “start three containers once.” It means “the desired state is three matching Pods.” Controllers observe reality and create, replace or remove resources until reality matches that intent.

## Namespaces

Namespaces provide a scope for many Kubernetes resources and are useful for isolation, organization and access control. They are not a complete security boundary by themselves.

```bash
kubectl create namespace demo
kubectl get namespaces
kubectl get all -n demo
```

## Labels and selectors

Labels attach metadata to objects. Selectors find objects by labels. Services, Deployments and other controllers rely heavily on this relationship.

```bash
kubectl run web --image=nginx:stable-alpine -n demo --labels=app=web
kubectl get pods -n demo --show-labels
kubectl get pods -n demo -l app=web
```

## Declarative vs imperative

Imperative commands are excellent for exploration:

```bash
kubectl create deployment web --image=nginx:stable-alpine
```

Declarative manifests are preferable for repeatable infrastructure:

```bash
kubectl apply -f deployment.yaml
```

## Lab

Create a namespace, deploy two replicas, inspect labels and selectors, scale to five replicas, delete one Pod, and observe reconciliation recreate it.

## Knowledge check

- Why is the API server central to Kubernetes?
- What does a controller reconcile?
- Why can deleting a Pod fail to reduce a Deployment's replica count?
- What relationship connects a Service to Pods?
