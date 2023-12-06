# AWS EKS Storage

<p align="center">
    <img src="https://private-user-images.githubusercontent.com/34484660/288358129-45ded0c7-1e8b-4f1f-ba3a-5413626adc2b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDE4NTU0OTEsIm5iZiI6MTcwMTg1NTE5MSwicGF0aCI6Ii8zNDQ4NDY2MC8yODgzNTgxMjktNDVkZWQwYzctMWU4Yi00ZjFmLWJhM2EtNTQxMzYyNmFkYzJiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFJV05KWUFYNENTVkVINTNBJTJGMjAyMzEyMDYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjMxMjA2VDA5MzMxMVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTYwNDEzZWQwZTg5OGZhODdiNDE2NWY1M2Q2MDU2YzMyMWU1NWQyZGE5NTg0YWZiMzk4NTAzYjI4Mjc0NDZkYzkmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.eaTyuvQeA77jr0cI5SvRDWExiMSEGUBtVOhqTV12QSU" />
</p>






<p align="center">
    <img src="https://private-user-images.githubusercontent.com/34484660/288358129-45ded0c7-1e8b-4f1f-ba3a-5413626adc2b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDE4NTU0OTEsIm5iZiI6MTcwMTg1NTE5MSwicGF0aCI6Ii8zNDQ4NDY2MC8yODgzNTgxMjktNDVkZWQwYzctMWU4Yi00ZjFmLWJhM2EtNTQxMzYyNmFkYzJiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFJV05KWUFYNENTVkVINTNBJTJGMjAyMzEyMDYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjMxMjA2VDA5MzMxMVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTYwNDEzZWQwZTg5OGZhODdiNDE2NWY1M2Q2MDU2YzMyMWU1NWQyZGE5NTg0YWZiMzk4NTAzYjI4Mjc0NDZkYzkmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.eaTyuvQeA77jr0cI5SvRDWExiMSEGUBtVOhqTV12QSU" />
</p>

## AWS EBS CSI Driver
- We are going to use EBS CSI Driver and use EBS Volumes for persistence storage to MySQL Database

## Topics
1. Install EBS CSI Driver
2. Create MySQL Database Deployment & ClusterIP Service
3. Create User Management Microservice Deployment & NodePort Service

## Concepts
| Kubernetes Object  | YAML File |
| ------------- | ------------- |
| Storage Class  | 01-storage-class.yml |
| Persistent Volume Claim | 02-persistent-volume-claim.yml   |
| Config Map  | 03-UserManagement-ConfigMap.yml  |
| Deployment, Environment Variables, Volumes, VolumeMounts  | 04-mysql-deployment.yml  |
| ClusterIP Service  | 05-mysql-clusterip-service.yml  |
| Deployment, Environment Variables  | 06-UserManagementMicroservice-Deployment.yml  |
| NodePort Service  | 07-UserManagement-Service.yml  |



## References:
- **Dynamic Volume Provisioning:** https://kubernetes.io/docs/concepts/storage/dynamic-provisioning/
- https://github.com/kubernetes-sigs/aws-ebs-csi-driver/tree/master/deploy/kubernetes/overlays/stable
- https://docs.aws.amazon.com/eks/latest/userguide/ebs-csi.html
- https://github.com/kubernetes-sigs/aws-ebs-csi-driver
- https://github.com/kubernetes-sigs/aws-ebs-csi-driver/tree/master/examples/kubernetes/dynamic-provisioning
- https://github.com/kubernetes-sigs/aws-ebs-csi-driver/tree/master/deploy/kubernetes/overlays/stable
- https://github.com/kubernetes-sigs/aws-ebs-csi-driver
- **Legacy: Will be deprecated** 
  - https://kubernetes.io/docs/concepts/storage/storage-classes/#aws-ebs
  - https://docs.aws.amazon.com/eks/latest/userguide/storage-classes.html