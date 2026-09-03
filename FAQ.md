# Frequently Asked Questions

## Should I learn Docker before Kubernetes?

You do not need to become a Docker expert, but you should understand images, containers, registries, processes, ports and volumes before relying on Kubernetes abstractions.

## Should I start with a cloud cluster?

Usually no. A local cluster is cheaper and makes experimentation easier. Move to EKS, AKS or GKE after you understand the Kubernetes fundamentals.

## Is Kubernetes just Docker at scale?

No. Kubernetes is an orchestration platform with an API, controllers, scheduling, networking, storage and extensibility. Containers are one layer of the system.

## Why did my Pod restart?

Inspect status, exit codes, events, current/previous logs, probes, resource pressure and node conditions. Do not assume every restart is an application crash.

## Why is my Service unreachable?

Check labels/selectors, readiness, EndpointSlices, Service ports, target ports, DNS and NetworkPolicy. Then test from an appropriate client Pod.

## Are Secrets encrypted?

Base64 encoding is not encryption. Actual protection depends on storage encryption, access controls, audit and the secret-management architecture of the cluster.

## What should I learn for production?

Security, networking, storage, observability, scheduling, upgrades, backup/restore, failure handling, automation, cost management and incident response matter as much as deploying YAML.
