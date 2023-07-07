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

- eksctl delete cluster     

# Get List of clusters

```t
eksctl get cluster    
```