## Delete EKS Cluster & Node Groups
Delete Node Group
- We can delete a nodegroup separately using below `eksctl delete nodegroup`
```t
# List EKS Clusters
eksctl get clusters

# Capture Node Group name
eksctl get nodegroup --cluster=<clusterName>
eksctl get nodegroup --cluster=mseks

# Delete Node Group
eksctl delete nodegroup --cluster=<clusterName> --name=<nodegroupName>
eksctl delete nodegroup --cluster=eksdemo1 --name=mseks-ng-public1
```

## Delete Cluster
We can delete cluster using eksctl delete cluster

```t
# Delete Cluster
eksctl delete cluster <clusterName>
eksctl delete cluster mseks
```

## Important Notes
Rollback any Security Group Changes
-