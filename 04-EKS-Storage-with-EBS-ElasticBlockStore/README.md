# AWS EKS Storage EBS CSI Driver

<p align="center">
    <img src="https://private-user-images.githubusercontent.com/34484660/288378775-d060d0dd-431e-43c8-9765-0d765eaec2eb.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDE4NTk3ODgsIm5iZiI6MTcwMTg1OTQ4OCwicGF0aCI6Ii8zNDQ4NDY2MC8yODgzNzg3NzUtZDA2MGQwZGQtNDMxZS00M2M4LTk3NjUtMGQ3NjVlYWVjMmViLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFJV05KWUFYNENTVkVINTNBJTJGMjAyMzEyMDYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjMxMjA2VDEwNDQ0OFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTUzODYwM2Q0NDgxYWU0MGU4YWNmODA5NjI2OWMzY2I1ZDJmZTViYTc0NjBhYjZkZDI2ZWY1ODFjMzZkMzgwODUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.vOIVFj6tQDe4EU8ytcjPLVU_wdk2svlqCTM-vrVCInQ" />
</p>

# AWS EKS Storage


<p align="center">
    <img src="https://private-user-images.githubusercontent.com/34484660/288358129-45ded0c7-1e8b-4f1f-ba3a-5413626adc2b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDE4NTU0OTEsIm5iZiI6MTcwMTg1NTE5MSwicGF0aCI6Ii8zNDQ4NDY2MC8yODgzNTgxMjktNDVkZWQwYzctMWU4Yi00ZjFmLWJhM2EtNTQxMzYyNmFkYzJiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFJV05KWUFYNENTVkVINTNBJTJGMjAyMzEyMDYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjMxMjA2VDA5MzMxMVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTYwNDEzZWQwZTg5OGZhODdiNDE2NWY1M2Q2MDU2YzMyMWU1NWQyZGE5NTg0YWZiMzk4NTAzYjI4Mjc0NDZkYzkmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.eaTyuvQeA77jr0cI5SvRDWExiMSEGUBtVOhqTV12QSU" />
</p>


# AWS Elastic Block Store - Introduction

- EBS provides block level storage volumes for use with EC2 & Container instances.
- We can mount these volumes as devices on our EC2 & Container instances. 
- EBS volumes that are attached to an instance are exposed as storage volumes that persist independently from the life of the EC2 or Container instance.
- We can dynamically change the configuration of a volume attached to an instance.
- AWS recommends EBS for data that must be quickly accessible and requires long-term persistence. 
- EBS is well suited to both database-style applications that rely on random reads and writes, and to throughput-intensive applications that perform long, continuous reads and writes.


https://private-user-images.githubusercontent.com/34484660/288378390-a8d2547d-d970-4eb8-b439-bb6d95766c34.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDE4NTk3MDEsIm5iZiI6MTcwMTg1OTQwMSwicGF0aCI6Ii8zNDQ4NDY2MC8yODgzNzgzOTAtYThkMjU0N2QtZDk3MC00ZWI4LWI0MzktYmI2ZDk1NzY2YzM0LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFJV05KWUFYNENTVkVINTNBJTJGMjAyMzEyMDYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjMxMjA2VDEwNDMyMVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPThhMTIwZTdkOTdlZGRiZTA1OTRlOTVhOGYxMWI5YjViNWNmYzA0MTU1YTc2ODZmMjZkMzk5MTIwMDYxYjI0YjUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.prWZWF6XHZFcQYno1Iv_tMSrEr4L5ZCv1XBKLCv6yTs

<p align="center">
    <img src="https://private-user-images.githubusercontent.com/34484660/288381766-370d4b92-d37f-42c7-9b6c-de3fa91f975a.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDE4NjA0NzcsIm5iZiI6MTcwMTg2MDE3NywicGF0aCI6Ii8zNDQ4NDY2MC8yODgzODE3NjYtMzcwZDRiOTItZDM3Zi00MmM3LTliNmMtZGUzZmE5MWY5NzVhLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFJV05KWUFYNENTVkVINTNBJTJGMjAyMzEyMDYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjMxMjA2VDEwNTYxN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWUxYTk2YzE3MDlmNmU1YTExY2NkYWNkZDE5NzAwZWU5NGJlNWY5ODgwNTNkMzY5Y2U3YzFlODAwZTAwMjZmYmMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.gcsLvRmCdUgQ02AwOcTNG0Y8wGOxuSpcWXUUcIDzkzw" />
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