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

```
- **Important Note:** Without --generator=run-pod/v1 it will create a pod with a deployment which is another core kubernetes concept which we will learn in next few minutes.
Important Note:
With Kubernetes 1.18 version, there is lot clean-up to kubectl run command.
The below will suffice to create a Pod as a pod without creating deployment. We dont need to add --generator=run-pod/v1

