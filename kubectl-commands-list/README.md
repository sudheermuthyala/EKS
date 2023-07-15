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
Get the list of pods
```t
# List Pods
kubectl get pods

# Alias name for pods is po
kubectl get po
```
List Pods with wide option

```t
## List pods with wide option which also provide Node information on which Pod is running
kubectl get pods -o wide
```
```t
# To get list of pod names
kubectl get pods

# Describe the Pod
kubectl describe pod <Pod-Name>
kubectl describe pod MSN-pod 
```