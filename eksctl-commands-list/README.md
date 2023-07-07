## eksctl commands List 

# Create a cluster
- eksctl create cluster 
 
```t
## Example
eksctl create cluster --name=mseks \
                      --region=us-east-1 \
                      --zones=us-east-1a,us-east-1b \
                      --without-nodegroup 

```
# Delete a cluster
```t
## Example
eksctl delete cluster <Cluster-Name>
eksctl delete cluster mseks
```

# Get List of clusters
```t
eksctl get cluster    
```

# Help
```t
eksctl create cluster --help
eksctl 
```

