## Kubernetes - Deployment

what are the deployment features available for us,

<p align="center">
    <img src="https://user-images.githubusercontent.com/34484660/253813487-21329bef-245d-4d43-8148-60693132d3ae.png" />
</p>

 
- **Deployments**
    - **Create a Deployment to rollout a ReplicaSet**
        - So we can create a deployment to roll out a replicaset.By default, whenever we create a deployment,a replicaset it is rolled out.
    - **Updating the Deployment**
        - And updating the deployment.So whenever we want to change our application version,update our application version,we can do the update of the deployment.When we do this, automatically our version,whatever we are going to update, it is going to be recorded.So now using that, 

    - **Rolling Back a Deployment**
        - we can easily roll back to our respective older deployment, whatever we want,because it is maintaining the versions.Or if you have updated from V1 to V2, V2 to V3, and then V3 to V4. And now again, if you want to go back to V2, yes,you will be able to go because it maintains the versions, and then version history.
    - **Scaling a Deployment**
        - So now we will be also able to scale our deployments.So how we have done the scaling in replicasets,in the same way in deployment also, we'll have a tag of replicas where we can add the number of replicas.We can add it, or we can use kubectl scale to scale our deployment.

    - **Pausing and Resuming a Deployment**
        - And we can even pause and resume a deployment.So in deployment, the core thing here is, like whenever you apply a change to your deployment,immediately it will be applied to your pods.So that is the thing. So if you want to make multiple changes, then you really don't want the pods to be recreated,or terminated and recreated every second for every change. So you have 10 changes to make to your deployment.Then pause the deployment and make all the changes,and then resume the deployment so that all those changes will be applied to your deployment at a time. So like this, there are multiple things we can take an advantage using the deployment.So whenever you are doing the deployment, 
    - **Deployment Status**
        - you can even get the rollout status or deployment status.

    - **Clean up Policy**
        - Cleanup policy is nothing but So whenever we do the updating of our deployments,it maintains the rollout version history.And by default, it maintains last 10 versions of our application.So we can go to that respective version using that. we will be able to add more number of versions by adding additional tag in our YAML manifest under the spec of the deployment.
    - **Canary Deployments**
        - canary deployments.So if we want to add a new version of our application in the live production traffic,and the traffic should distribute with old version and the new version,still we'll be able to do it using canary deployments.So all these things are available for us with deployment.

## Kubernetes - Deployment Topics

1. Create Deployment
2. Scale the Deployment
3. Expose Deployment as a Service
4. Update Deployment
5. Rollback Deployment
6. Rolling Restarts
7. Pause & Resume Deployments
8. Canary Deployments (Will be covered at Declarative section of Deployments)

## 01-CreateDeployment-Scaling-and-Expose-as-Service
Introduction to Deployments
- What is a Deployment?
- What all we can do using Deployment?
- Create a Deployment
- Scale the Deployment
- Expose the Deployment as a Service

Create Deployment
- Create Deployment to rollout a ReplicaSet
- Verify Deployment, ReplicaSet & Pods
- Docker Image Location: https://hub.docker.com/repository/docker/stacksimplify/kubenginx

```t
# Create Deployment
kubectl create deployment <Deplyment-Name> --image=<Container-Image>
kubectl create deployment my-first-deployment --image=stacksimplify/kubenginx:1.0.0 

# Verify Deployment
kubectl get deployments
kubectl get deploy 

# Describe Deployment
kubectl describe deployment <deployment-name>
kubectl describe deployment my-first-deployment

# Verify ReplicaSet
kubectl get rs

# Verify Pod
kubectl get po
```
Scaling a Deployment
- Scale the deployment to increase the number of replicas (pods)

```t
# Scale Up the Deployment
kubectl scale --replicas=20 deployment/<Deployment-Name>
kubectl scale --replicas=20 deployment/my-first-deployment 

# Verify Deployment
kubectl get deploy

# Verify ReplicaSet
kubectl get rs

# Verify Pods
kubectl get po

# Scale Down the Deployment
kubectl scale --replicas=10 deployment/my-first-deployment 
kubectl get deploy
```

 Expose Deployment as a Service
 - Expose Deployment with a service (NodePort Service) to access the application externally (from internet)

```t
# Expose Deployment as a Service
kubectl expose deployment <Deployment-Name>  --type=NodePort --port=80 --target-port=80 --name=<Service-Name-To-Be-Created>
kubectl expose deployment my-first-deployment --type=NodePort --port=80 --target-port=80 --name=my-first-deployment-service

# Get Service Info
kubectl get svc
Observation: Make a note of port which starts with 3 (Example: 80:3xxxx/TCP). Capture the port 3xxxx and use it in application URL below. 

# Get Public IP of Worker Nodes
kubectl get nodes -o wide
Observation: Make a note of "EXTERNAL-IP" if your Kubernetes cluster is setup on AWS EKS.
```


- Access the Application using Public IP

```t
http://<worker-node-public-ip>:<Node-Port>

```

## 02-Update-Deployment
Kubernetes - Update Deployments Introduction
- We can update deployments using two options
    Set Image
Edit Deployment

