## Kubernetes - Deployment

Deployments 
- what are the deployment features available for us,
    - **Create a Deployment to rollout a ReplicaSet**
        - So we can create a deployment to roll out a replicaset.By default, whenever we create a deployment,a replicaset it is rolled out.
    - **Updating the Deployment**
        - And updating the deployment.So whenever we want to change our application version,update our application version,we can do the update of the deployment.When we do this, automatically our version,whatever we are going to update, it is going to be recorded.So now using that, 

    - **Rolling Back a Deployment**
        - we can easily roll back to our respective older deployment, whatever we want,because it is maintaining the versions.Or if you have updated from V1 to V2, V2 to V3, and then V3 to V4. And now again, if you want to go back to V2, yes,you will be able to go because it maintains the versions, and then version history.
    - **Scaling a Deployment**
        - So now we will be also able to scale our deployments.So how we have done the scaling in replicasets,in the same way in deployment also, we'll have a tag of replicas where we can add the number of replicas.We can add it, or we can use kubectl scale to scale our deployment.

    - **Pausing and Resuming a Deployment**
        - 
    - **Deployment Status**
    - **Clean up Policy**
    - **Canary Deployments**








