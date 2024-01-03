# EKS Storage with EBS - Elastic Block Store
##  Step-01: Introduction
- Create IAM Policy for EBS
- Associate IAM Policy to Worker Node IAM Role
- Install EBS CSI Driver
## Step-02: Create IAM policyy
- Go to Services -> IAM
- Create a Policy
    - Select JSON tab and copy paste the below JSON

```t

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:AttachVolume",
        "ec2:CreateSnapshot",
        "ec2:CreateTags",
        "ec2:CreateVolume",
        "ec2:DeleteSnapshot",
        "ec2:DeleteTags",
        "ec2:DeleteVolume",
        "ec2:DescribeInstances",
        "ec2:DescribeSnapshots",
        "ec2:DescribeTags",
        "ec2:DescribeVolumes",
        "ec2:DetachVolume"
      ],
      "Resource": "*"
    }
  ]
}
```
- Review the same in Visual Editor
- Click on **Review Policy**
- **Name:** Amazon_EBS_CSI_Driver
- Description: Policy for EC2 Instances to access Elastic Block Store
- Click on Create Policy


