# 19 — Operators and CRDs

Kubernetes can be extended with **Custom Resource Definitions (CRDs)** and controllers.

## Custom resources

A CRD adds a new API kind. A controller watches those resources and reconciles them into other Kubernetes or external state.

## Reconciliation

A controller should be thought of as a loop:

```text
observe desired + observed state
          ↓
       compare
          ↓
       reconcile
          ↓
     observe again
```

Controllers must tolerate retries and eventually consistent state. They should be designed to avoid unsafe duplicate side effects.

## When to use an operator

Operators are valuable when domain-specific operational knowledge can be expressed as repeatable reconciliation: databases, certificates, queues, or platform services are common examples.

Do not create a CRD simply to make YAML look different. An extension should have a clear API contract, lifecycle semantics and operational ownership.

## Lab

Study an existing operator's CRD and controller behavior. Trace one custom resource from creation through reconciliation and identify status conditions, owned resources and failure recovery.
