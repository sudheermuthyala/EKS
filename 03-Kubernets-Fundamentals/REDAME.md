## Kubernets Introduction
* kubernets is a portable, extensible, Open-Source Platform For managing Containerixed Workloads
* **Out of the Box Features**
    * Service discovery and load balancing
    * Storage orchestration
    * Automated rollouts And rollbacks
    * Automatic bin Packing
    * self-healing
    * Secret And Configuration management

##  Kubernetes - Architecture 
- **Master Node**
- **Worker Nodes**
    * **Master Node :**
        - **Container Runtime (Docker) :** 
        - **Etcd :**
            * Consistent and highly-available key value store used as Kubernetes’ backing store for all cluster data.
            * It stores all the masters and worker node information
        - **Kube-Scheduler :**
            * Scheduler is responsible for `distributing containers` across multiple nodes.
            * It watches for newly created Pods with no assigned node, and selects a node for them to run on
        - **Kube-Apiserver :** 
            * It acts as front end for the Kubernetes control plane. It exposes the Kubernetes API.
            * Command line tools (like kubectl), Users and even Master components (scheduler, controller manager, etcd) and Worker node components like (Kubelet) everything talk with API Server. 
        - **Kube-ControlManager :**
            * Controllers are responsible for noticing and responding when `nodes`, `containers` or `endpoints` go down. They make decisions to bring up new containers in such cases. 
                - **Node Controller :**
                - **Replication Controller :**
                - **Endpoints Controller:**
                - ****

        - **CLoud ControlManager :**
    - **Worker Nodes**
        - **Container Runtime (Docker) :**
        - **Kubelet :**
        - **Kube-Proxy :**


