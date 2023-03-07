### Kubernetes - PODs
PODs Introduction
- What is a POD ?
- What is a Multi-Container POD?

### PODs Demo

## Get Worker Nodes Status
- Verify if kubernetes worker nodes are ready.
```t
# Get Worker Node Status
kubectl get nodes

# Get Worker Node Status with wide option
kubectl get nodes -o wide
```

## Create a Pod Imperative way

- Create a Pod

```t
# Template
kubectl run <desired-pod-name> --image <Container-Image> --generator=run-pod/v1

# Replace Pod Name, Container Image
kubectl run my-first-pod --image stacksimplify/kubenginx:1.0.0 --generator=run-pod/v1

And then we also have additional tag named --generator is called to run-pod/v1 So this is required to create pod as a pod instead of a deployment.
```
