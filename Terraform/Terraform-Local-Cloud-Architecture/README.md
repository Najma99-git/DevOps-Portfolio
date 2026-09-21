# Terraform Local Cloud Architecture

## Project Overview

This project demonstrates my understanding of Terraform fundamentals by modelling a small cloud-style web architecture locally using the HashiCorp Local provider.

The project uses Infrastructure as Code principles to manage multiple simulated web servers and a load balancer configuration through Terraform.

## Architecture

The architecture consists of:

- 3 simulated web servers
- 1 simulated load balancer configuration
- Reusable server and load balancer templates
- Configurable project variables
- Terraform outputs
- Terraform state management

Architecture flow:

```
User Traffic
     |
     v
Load Balancer
     |
     +-------------------+
     |         |         |
     v         v         v
Web Server 1  Web Server 2  Web Server 3
```

## Project Structure

Terraform-Local-Cloud-Architecture/
|
|-- main.tf
|-- variables.tf
|-- terraform.tfvars
|-- outputs.tf
|-- templates/
|   |-- server.tpl
|   `-- load-balancer.tpl
|-- .gitignore
`-- README.md

## Terraform Concepts Practised

### Variables
`variables.tf` defines the values the Terraform configuration expects.

Memory: **ASK**

### Variable Values
`terraform.tfvars` provides values for those variables.

Memory: **ANSWER**

### Resources
`main.tf` defines the resources Terraform manages.

Memory: **BUILD**

### Templates
Reusable templates are used to generate server and load balancer configuration files.

Memory: **CONTENT**

### Outputs
`outputs.tf` displays useful information about the managed architecture.

Memory: **SHOW**

### State
Terraform state records the resources Terraform currently manages.

Memory: **STATE = MEMORY**

## Terraform Workflow

The main workflow used in this project was:

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output

Memory:

**INIT -> PREPARE**  
**FMT -> TIDY**  
**VALIDATE -> CHECK**  
**PLAN -> PREVIEW**  
**APPLY -> PERFORM**  
**OUTPUT -> SHOW**

## Scaling Test

The architecture initially contained two web servers.

The `server_count` variable was then changed from:

server_count = 2

to:

server_count = 3

Terraform detected the difference between the current state and desired configuration and generated a plan to create the additional server and update the load balancer configuration.

This demonstrated Terraform's declarative approach: define the desired infrastructure and allow Terraform to calculate the required changes.

## Key Learning

Through this project I practised:

- Structuring a Terraform project
- Configuring a Terraform provider
- Using variables and tfvars
- Creating and managing resources
- Using `count` to create multiple resources
- Using `count.index`
- Working with reusable templates
- Referencing resources
- Using Terraform outputs
- Reading Terraform execution plans before applying changes
- Understanding Terraform state
- Scaling resources through configuration changes
- Using `.gitignore` to prevent local Terraform state and provider files from being committed

## Important Note

This project uses the HashiCorp Local provider to simulate cloud-style infrastructure locally. It does not deploy real cloud servers or a real network load balancer.

The purpose of the project is to demonstrate Terraform workflow, configuration structure, reusable infrastructure patterns, state management, and scaling concepts before applying the same principles to cloud infrastructure.

Then save:


