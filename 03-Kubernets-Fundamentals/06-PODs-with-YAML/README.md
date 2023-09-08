## PODs with YAML
## 01: Kubernetes YAML Top level Objects
- Discuss about the k8s YAML top level objects
- 01-kube-base-definition.yml

```yml
apiVersion:
kind:
metadata:
  
spec:
```
- **Pod API Objects Reference:** [Pod v1 core](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.26/#pod-v1-core)

## Create Simple Pod Definition using YAML
- We are going to create a very basic pod definition
- 02-pod-definition.yml

```yml
apiVersion: v1 #String
kind: Pod  # String
metadata: # Dictionary
  name: myapp-pod
  labels: # Dictionary
    app: myapp
  
spec:
  containers: # List
    - name: myapp
      image: stacksimplify/kubenginx:1.0.0
      ports: 
        - c

```