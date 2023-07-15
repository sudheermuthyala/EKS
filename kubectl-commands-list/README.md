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
Running individual commands in a Container
```t
kubectl exec -it <pod-name> env
# Sample Commands
kubectl exec -it my-first-pod env
kubectl exec -it my-first-pod ls
kubectl exec -it my-first-pod cat /usr/share/nginx/html/index.html
```
Get YAML Output of Pod & Service
```t
# Get pod definition YAML output
kubectl get pod my-first-pod -o yaml   

# Get service definition YAML output
kubectl get service my-first-service -o yaml
```
Clean-Up
```t
# Get all Objects in default namespace
kubectl get all

# Delete Services
kubectl delete svc my-first-service
kubectl delete svc my-first-service2
kubectl delete svc my-first-service3
# Delete Pod
kubectl delete pod my-first-pod

# Get all Objects in default namespace
kubectl get all
```
Create ReplicaSet
```t
## Create ReplicaSet
kubectl create -f replicaset-demo.yaml
```
Get list of ReplicaSets
```t

```

```t

```

```t

```

```t

```

```t

```
```t

```
```t

```
```t

```
```t

```