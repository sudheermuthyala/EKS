### Kubernetes – Service - NodePort
* We can expose an application running on a set of PODs using different types of Services available in k8s. 
  * ClusterIP
  * NodePort
  * LoadBalancer


## NodePort Service Introduction
* NodePort Service
  * To access our application outside of k8s cluster, we can use NodePort service. 
  * Exposes the Service on each Worker Node's IP at a static port (nothing but NodePort). 
  * A ClusterIP Service, to which the NodePort Service routes, is automatically created. 
  * Port Range 30000-32767

 <p align="center">
    <img src="https://github.com/sudheermuthyala/EKS/blob/main/Img/2023-03-07-16-17-58.png" />
      </p>

## Demo - Expose Pod with a Service
- Expose pod with a service (NodePort Service) to access the application externally (from internet)
- **Ports**
  - **port:** Port on which node port service listens in Kubernetes cluster internally
  - **targetPort:** We define container port here on which our application is running.
  - **NodePort:** Worker Node port on which we can access our application.