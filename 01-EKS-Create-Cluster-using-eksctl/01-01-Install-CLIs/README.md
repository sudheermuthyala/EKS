# Install AWS, kubectl & eksctl CLI's

## Introduction
- Install AWS CLI
- Install kubectl CLI
- Install eksctl CLI

## Linux - Install and configure AWS CLI 
- Download the binary and install via command line using below two commands.
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
- Verify the installation
```
aws --version
aws-cli/2.0.7 Python/3.7.4 Darwin/19.4.0 botocore/2.0.0dev11

which aws
```