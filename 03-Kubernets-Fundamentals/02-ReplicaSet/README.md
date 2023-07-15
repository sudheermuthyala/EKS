## Kubernetes - ReplicaSets
Introduction to ReplicaSets 
- What are ReplicaSets?
    - A ReplicaSet’s purpose is to maintain a stable set of replica Pods running at any given time.
    - If our application crashes (any pod dies), replicaset will recreate the pod immediately to ensure the configured number of pods running at any given time. 


- What is the advantage of using ReplicaSets?
    - **High Availability or Reliability :**
        - A ReplicaSet’s purpose is to maintain a stable set of replica Pods running at any given time
        - If our application crashes (any pod dies), replicaset will recreate the pod immediately to ensure the configured number of pods running at any given time.
    - **Scaling :**
        - When load become too much for the number of existing pods, Kubernetes enables us to easily scale up our application, adding additional pods as needed.
        - This is going to be seamless and super quick.
    - **Load Balancing :**
        - To avoid overloading of traffic to single pod we can use `load balancing`. 
        - Kubernetes provides pod load balancing out of the box using Services  for the pods which are part of a ReplicaSet
    - **Labels & Selectors :**
        - `Labels & Selectors` are the key items which ties all 3 together (Pod, ReplicaSet & Service), we will know in detail when we are writing YAML manifests for these objects


<p align="center">
    <img src="https://user-images.githubusercontent.com/34484660/253736877-549921cc-efe2-4579-9ab9-ffbe22775b18.png" />
</p>



## Create ReplicaSet
Create ReplicaSet

```t
## Create ReplicaSet
kubectl create -f replicaset-demo.yaml
```