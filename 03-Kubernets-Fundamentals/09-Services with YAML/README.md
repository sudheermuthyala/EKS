# Services with YAML
## Backend Application Create Deployment and ClusterIP

# Step-01: Introduction to Services
- We are going to lookin to below two services in detail with a frontend and backend examples
    - NodePort Service
    - ClusterIP Service

# Step-02: Create Backend Deployment & ClusterIP Service
- Write the Deployment template for the backent REST Application. 
- Write the ClusterIP template for the backend REST Application.

**Important Notes:**  Hear i am using Docker images from stacksimplify 
- Name of `ClusterIP` service should be `name: my-backend-service` because same is configured in frontend nginx reverse proxy `default.conf`

```t

cd <Course-Repo>\kubernetes-fundamentals\09-Services with YAML\kube-manifests
kubectl get all
kubectl apply -f 01-backend-deployment.yml -f 02-backend-clusterip-service.yml
kubectl get all

```
# Step-03: Create Frontend Deployment & NodePort Service
- Write the Deployment template for frontend Nginx Application
- Write the NodePort service template for frontend Nginx Application


