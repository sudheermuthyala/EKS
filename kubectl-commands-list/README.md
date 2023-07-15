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
# Template
kubectl run <desired-pod-name> --image <Container-Image> --generator=run-pod/v1
# Replace Pod Name, Container Image
kubectl run MSN-pod --image stacksimplify/kubenginx:1.0.0 --generator=run-pod/v1
```