# Terraform AWS WordPress Deployment

## Project Overview

This project was my first assignment for Terraform which required deploying a working WordPress website on AWS using Terraform.

Terraform provisions the AWS infrastructure, including an EC2 instance and
Security Group. EC2 User Data automatically installs and configures Apache,
PHP, MariaDB and WordPress.

## Architecture

Internet
   |
   | HTTP :80
   v
Security Group
   |
   v
EC2 (Ubuntu)
   |
   +-- Apache
   +-- PHP
   +-- MariaDB
   +-- WordPress

## Terraform Structure

- `main.tf` - Builds and configures the AWS infrastructure.
- `variables.tf` - Defines reusable input variables.
- `outputs.tf` - Displays the EC2 public IP and WordPress URL.
- `install-wordpress.sh` - Automatically installs and configures WordPress.
- `evidence/` - Contains screenshots proving the deployment works.

## Terraform Workflow

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply


## Evidance (Screenshots)

1.  terraform-apply.png
2.  ec2-running.png
3.  curl-wordpress-response.png
4.  wordpress-dashboard.png
5.  wordpress-public-site.png


## Troubleshooting 

At the last stage when I completed everything, I experienced issues deploying and accessing the Wordpress application. 
I followed step by step the troubleshooting process to identify where the problem was coming from:

- Checked the EC2 instance was running fine. 
- Checked the Security Group allowed HTTP on port 80. 
- Checked the public IP to make sure the website could be reached. 
- Checked the User Data script to make sure WordPress was installed correctly. 

In the end the issue was the User Data script, it was not installed at all and I went back to make sure it was installed. 
This was a very interesting and practical learning for me to improve how i troubleshoot, Identifying the issue and fixing was one of the best parts of the learning process for this project. 



## Learning Outcome

This project challenged me to think outside the box when issues occurred and focus on the specific problem instead of changing everything at once.
I learned how Terraform can create AWS infrastructure and automatically set up an application like WordPress.
This project also improved my troubleshooting skills by teaching me to check each part step by step. 
