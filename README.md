# End-to-End Automation with Terraform and Ansible for AWS

**_This project_** provides an end-to-end automation solution for creating infrastructure on AWS using Terraform and configuring it using Ansible. The infrastructure created includes an EC2 instance, VPC, and security group. Once the infrastructure is in place, Ansible is used to clone a GitHub repository onto the EC2 instance and configure it.
Prerequisites

To use this project, you must have the following installed:

| Name |
|------|
| Terraform |
| Ansible |


You must also have an AWS account with the following resources created:

    An AWS Access Key and Secret Access Key
    A key pair for SSH access to the EC2 instance

# Usage
**1- Go to terraform/ec2-base**
**2- Run Following Commands:**
```sh
$ terraform init
$ terraform plan
$ terraform apply
```

**If you are still unable to resolve the issue, please open an issue in this repository.**