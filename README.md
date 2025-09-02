Ansys Test - AWS VPC and EC2 Setup with Terraform
This project uses Terraform to provision a VPC, subnets, and an EC2 instance on AWS as part of a technical assessment.

My Approach
I built the infrastructure incrementally, with each commit representing a logical step in the process.

VPC: Started with the foundational VPC resource.

Subnets & IGW: Added public and private subnets across multiple AZs, along with an Internet Gateway.

Routing: Configured a route table to provide internet access to the public subnets, leaving the private subnets isolated.

EC2 & Security: Provisioned an EC2 instance in a public subnet and a security group to allow inbound HTTP traffic.

Refactoring: Abstracted hardcoded values into a variables.tf file and exposed key resource information via outputs.tf for reusability.

How to Use
Initialize Terraform:

Bash

terraform init
Plan the deployment:

Bash

terraform plan
Apply the changes:

Bash

terraform apply
To remove all resources, run terraform destroy.

Potential Improvements
For a production environment, I would add a NAT Gateway for private subnets, organize the code into modules, and use a remote backend for state management.
