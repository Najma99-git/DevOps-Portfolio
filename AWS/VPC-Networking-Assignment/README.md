# Assignment 1 - VPC & Networking

## Project Overview

In this project, I built a custom AWS VPC from scratch to understand cloud networking, routing, subnet segmentation, and secure EC2 access.

## Objective

Create a custom VPC with:

- One public subnet
- One private subnet
- Internet Gateway
- NAT Gateway
- Public and private route tables
- Public EC2 instance
- Private EC2 instance
- Security groups with controlled access

## Architecture

Custom VPC CIDR: `10.0.0.0/16`

| Resource | Purpose |
|---|---|
| Public Subnet | Hosts public EC2 / Bastion Host |
| Private Subnet | Hosts private EC2 with no public IP |
| Internet Gateway | Allows public subnet internet access |
| NAT Gateway | Allows private subnet outbound internet access |
| Route Tables | Controls traffic direction |
| Security Groups | Controls allowed traffic |

## Screenshot Evidence

Screenshots will be added as each stage is completed.

## Skills Practiced

- AWS VPC creation
- Public and private subnet design
- Route table configuration
- Internet Gateway setup
- NAT Gateway setup
- EC2 placement in subnets
- Security group rules
- Bastion host access pattern
