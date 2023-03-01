## Create EKS Cluster & Node Groups
Introduction
- Understand about EKS Core Objects
    - Control Plane
    - Worker Nodes & Node Groups
    - Fargate Profiles
    - VPC
- Create EKS Cluster
- Associate EKS Cluster to IAM OIDC Provider
- Create EKS Node Groups
- Verify Cluster, Node Groups, EC2 Instances, IAM Policies and Node Groups

## AWS EKS – Core Objects 
EKS Cluster
- **EKS Control Plane :** Contains Kubernetes Master components like **etcd**, **kube-apiserver**, **kube-controller**.
It’s a managed service by AWS
- **Worker Nodes & Node Groups :** Group of EC2 Instances where we run our Application workloads

- **Fargate Profiles (Serverless) :** Instead of EC2 Instances, we run our Application workloads on Serverless Fargate profiles
- **VPC :** With AWS VPC we follow secure networking standards which will allow us to run production workloads on EKS. 
<p align="center">
  <img src="https://github.com/sudheermuthyala/EKS/blob/main/Img/2023-03-01-14-25-56.png" />
    </p>

## EKS Cluster – Core Objects Detailed
- **EKS Control Plane :** 
    1. EKS runs a single tenant Kubernetes control plane for each cluster, and control plane infrastructure is not shared across clusters or AWS accounts.
    2. This control plane consists of at least two API server nodes and three etcd nodes that run across three Availability Zones within a Region
    3. EKS automatically detects and replaces unhealthy control plane instances, restarting them across the Availability Zones within the Region as needed.
- **Worker Nodes & Node Groups
**



