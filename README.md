# TestLab

Using Terraform, create the following infra (Jenkins+Ansible, VPC and App Server).
In this we need to use the userdata to install the Jenkins and
Ansible/Chef/Puppet/etc.

The above Terraform scripts will create infra on AWS
  - The provider.tf has credentials & region information.
  - The vpc.tf will create vpc network with cidr 172.20.0.0/16, it will also create public & private subnets, internet gateway, route table & security groups
  - The variables.tf has variables/metadata passed at runtime.
  - The starter.sh script file has user-data script to install jenkins & ansible
  - The instance.tf file contains instance creation data.

# How to execute above scripts
  -- execute following commands:
  - terraform plan
  - terraform apply

