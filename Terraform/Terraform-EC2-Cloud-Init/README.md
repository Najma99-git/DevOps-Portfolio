Terraform Assignment 2 — EC2 Deployment with Cloud-Init

Objective:
The aim of this assignment was to use Terraform to create an EC2 instance on AWS and cloud-init to automatically install NGINX and display a webpage without manual setup.
Tools Used
- Terraform
- AWS EC2
- Cloud-init YAML
- NGINX
- AWS Security Group
- Ubuntu WSL and Nano

What I Did:
- Created a cloud-init.yaml file to automatically install NGINX and create a webpage.
- Used Terraform to deploy an Ubuntu EC2 instance on AWS.
- Connected cloud-init to EC2 using user_data.
- Configured a security group to allow HTTP traffic through port 80.
- Ran terraform init, fmt, validate, plan and apply.
- Tested the public IP in my browser and confirmed the webpage was working.
- Created outputs.tf to display the EC2 public IP automatically.

Troubleshooting:

During validation, I received an error because I had placed vpc_security_group_ids inside the tags section.
I corrected the configuration in main.tf and ran terraform validate again successfully.

Screenshots:
Deployment evidence is available in the screenshots folder:
- Terraform Apply
- AWS EC2 Console
- Terraform Output
- Working Website

What I Learned:
The biggest lesson was understanding how Terraform and cloud-init work together to automate an EC2 deployment.
My simple way of remembering the process:
BUILD - INSTALL - SHOW
- Terraform: Builds the EC2 server.
- Cloud-init: Installs and configures NGINX automatically.
- NGINX: Serves the webpage.
I also improved my understanding of security groups, Terraform outputs and troubleshooting configuration errors.
