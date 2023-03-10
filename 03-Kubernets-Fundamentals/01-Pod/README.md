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
kubectl run MSN-pod --image stacksimplify/kubenginx:1.0.0 --generator=run-pod/v1

```
- **Important Note :** Without --generator=run-pod/v1 it will create a pod with a deployment
- **Important Note :** With Kubernetes 1.18 version, there is lot clean-up to kubectl run command. The below will suffice to create a Pod as a pod without creating deployment. We dont need to add --generator=run-pod/v1

```
kubectl run MSN-pod --image stacksimplify/kubenginx:1.0.0
```

## List Pods
* Get the list of pods
```t
# List Pods
kubectl get pods

# Alias name for pods is po
kubectl get po
```
## List Pods with wide option
- List pods with wide option which also provide Node information on which Pod is running
```
kubectl get pods -o wide
```
### What happened in the backgroup when above command is run?
1. Kubernetes created a pod
2. Pulled the docker image from docker hub
3. Created the container in the pod
4. Started the container present in the pod

### Describe Pod
- Describe the POD, primarily required during troubleshooting. 
- Events shown will be of a great help during troubleshooting. 
```t
# To get list of pod names
kubectl get pods

# Describe the Pod
kubectl describe pod <Pod-Name>
kubectl describe pod MSN-pod 
```

### Delete Pod
```
# To get list of pod names
kubectl get pods

# Delete Pod
kubectl delete pod <Pod-Name>
kubectl delete pod my-first-pod