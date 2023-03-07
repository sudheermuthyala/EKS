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
        - **Kube-Scheduler :**
        - **Kube-Apiserver :** It acts as front end for the Kubernetes control plane. It exposes the Kubernetes API Command line tools (like kubectl), Users and even Master components (scheduler, controller manager, etcd) and Worker node components like (Kubelet) everything talk with API Server. 

        - **KubeControlManager :**
        - **CLoud ControlManager :**
    - **Worker Nodes**
        - **Container Runtime (Docker) :**
        - **Kubelet :**
        - **Kube-Proxy :**


