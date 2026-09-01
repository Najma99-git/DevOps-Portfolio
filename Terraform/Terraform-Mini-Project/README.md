# Terraform Mini Project

## Project Overview

This is a beginner Terraform project created to understand how Terraform works in a DevOps workflow.

This project helped me understand the workflow of Terraform, learn the main Terraform commands, and understand their purpose at each stage of the work.

## What I Built

Terraform created and managed a simple `index.html` file using instructions written inside the `main.tf` configuration file.

This helped me see how Terraform can take instructions written as code and use them to create and manage a resource.

## Tools Used

- Terraform
- Git
- GitHub
- Linux / Ubuntu

## Terraform Workflow

The three main commands I used were:

- `terraform init` - **Prepare**: prepares the Terraform project and downloads the required provider.
- `terraform plan` - **Preview**: shows what Terraform plans to create, change, or destroy before anything happens.
- `terraform apply` - **Perform**: performs the planned actions and creates or changes the resource.

My memory trick is:

**PREPARE → PREVIEW → PERFORM**

`init` → `plan` → `apply`

## What I Learned

In this task I learned that `main.tf` is the main Terraform configuration file where I write the instructions for what I want Terraform to create and manage.

Terraform then uses the three main commands:

`terraform init` prepares the project.

`terraform plan` checks my configuration against the current resources and previews what Terraform wants to do.

`terraform apply` performs the actions and makes the resources match my Terraform configuration.

I also learned about **Terraform state**. Terraform uses state to keep track of the resources it is managing.

Another important concept I learned was **drift**. Drift happens when a resource managed by Terraform is changed outside Terraform, causing the real resource to no longer match the Terraform configuration.

Terraform can detect this difference when running `terraform plan`.

I also learned why `.gitignore` is important. Some Terraform files, especially state files, should not be uploaded to GitHub because they can contain infrastructure information and potentially sensitive data.

## Project Files

- `main.tf` - The main Terraform configuration file. It contains the instructions telling Terraform what resources I want. I think of it like the **recipe/instruction file**.

- `index.html` - The resource Terraform created in this beginner project. It allowed me to practise Terraform locally before moving on to real cloud infrastructure such as AWS EC2.

- `.gitignore` - Tells Git which files should not be committed to GitHub, such as Terraform state files.

- `.terraform.lock.hcl` - Records the provider versions selected by Terraform so the project can use consistent versions in the future.

## Key Takeaway

In this mini starter project, I learned that Terraform uses code to automate infrastructure work that DevOps engineers would otherwise have to configure manually.

Terraform fits into DevOps because it can build and manage the infrastructure required for an application to run.

For example, instead of manually creating servers and other resources in AWS, Terraform can define and create them using code.

This makes infrastructure more **repeatable, consistent, manageable, and less prone to manual errors**.
