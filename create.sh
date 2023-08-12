
#create { 

eksctl create cluster --name=myeks \
                      --region=us-east-1 \
                      --zones=us-east-1a,us-east-1b \
                      --without-nodegroup 


eksctl utils associate-iam-oidc-provider \
    --region us-east-1 \
    --cluster myeks \
    --approve 


eksctl create nodegroup --cluster=myeks \
                       --region=us-east-1 \
                       --name=mseks-ng-public1 \
                       --node-type=t3.medium \
                       --nodes=2 \
                       --nodes-min=2 \
                       --nodes-max=4 \
                       --node-volume-size=20 \
                       --ssh-access \
                       --ssh-public-key=k8s \
                       --managed \
                       --asg-access \
                       --external-dns-access \
                       --full-ecr-access \
                       --appmesh-access \
                       --alb-ingress-access 

#}


# delete {
eksctl delete clusture --name myeks

#}


