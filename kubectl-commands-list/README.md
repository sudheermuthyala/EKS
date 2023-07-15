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
Delete Pod
```t
# To get list of pod names
kubectl get pods

# Delete Pod
kubectl delete pod <Pod-Name>
kubectl delete pod my-first-pod
```
Interact with a Pod
```t
# Get Pod Name
kubectl get po

# Dump Pod logs
kubectl logs <pod-name>
kubectl logs my-first-pod

# stream pod logs with -f option and access application to see logs
kubectl logs -f <pod-name>
kubectl logs -f my-first-pod
```
Connect to Container in a POD
```t
# Connect to Nginx Container in a POD
kubectl exec -it <pod-name> -- /bin/bash
kubectl exec -it my-first-pod -- /bin/bash

# Execute some commands in Nginx container
ls
cd /usr/share/nginx/html
cat index.html
exit
```
