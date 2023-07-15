Get Worker Node Status
```t
kubectl get nodes

```
Get Worker Node Status with wide option
```t
kubectl get nodes -o wide
```
Create a Pod Imperative way
```t
kubectl run <desired-pod-name> --image <Container-Image> --generator=run-pod/v1

```