## Kubernetes - ReplicaSets
Introduction to ReplicaSets 
- What are ReplicaSets?
    - A ReplicaSet’s purpose is to maintain a stable set of replica Pods running at any given time.
    

- What is the advantage of using ReplicaSets?
    - High Availability or Reliability
    - Scaling
    - Load Balancing
    - Labels & Selectors

<p align="center">
    <img src="https://user-images.githubusercontent.com/34484660/253736877-549921cc-efe2-4579-9ab9-ffbe22775b18.png" />
</p>



## Create ReplicaSet
Create ReplicaSet

```t
## Create ReplicaSet
kubectl create -f replicaset-demo.yaml
```