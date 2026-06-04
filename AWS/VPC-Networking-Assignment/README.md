AWS VPC Networking Assignment:

#Project overview;

- This project was completed as part of my DevOps learning journey to understand how networking works inside AWS.
The goal was to build a custom Virtual Private Cloud (VPC) from scratch and learn how public and private resources communicate securely. Throughout this project, I worked with subnets, route tables, internet gateways, NAT gateways, EC2 instances, and security groups while troubleshooting connectivity issues and testing network traffic.
This project helped me understand the relationship between VPCs, subnets, routing, and internet access in a cloud environment

#Objectives;

Build a custom AWS network consisting of:

- Custom VPC
- Public Subnet
- Private Subnet
- Internet Getway (IGW)
- NAT Gateway
- Public Route Table 
- Private Route Table
- Public EC2 Instance
- Private EC2 Instance
- Security Groups 

#Environment;

 Resources:      Configuration:
 
 - AWS Region     = eu-west-2 (London)
 - VPC CIDR       = 10.0.0.0/16
 - Public subnet  = 10.0.1.0/24
 - Private subnet = 10.0.2.0/24
 - Public EC2     = Ubuntu 26.04
 - Private EC2    = Ubuntu 26.04

#Architecture;
The network was designed with one public subnet and one private subnet.
The public subnet contains:
•	Public EC2 Instance
•	NAT Gateway
The private subnet contains:
•	Private EC2 Instance
Internet access for public resources is provided through an Internet Gateway.
Internet access for private resources is provided through a NAT Gateway, allowing outbound internet connectivity without exposing the private EC2 directly to the internet.

What I Build:


1. Created a Custom VPC
Created a VPC named Najma-VPC-Assignment with CIDR block 10.0.0.0/16.
Screenshot:
./screenshots/vpc-created.png

2. Created Public and Private Subnets
Configured separate public and private subnets for workload isolation.
Screenshots:
./screenshots/public-subnet.png
./screenshots/private-subnet.png
./screenshots/subnets-created.png

3. Configured Internet Gateway
Created and attached an Internet Gateway to provide internet access for public resources.
Screenshots:
./screenshots/internet-gateway-created.png
./screenshots/internet-gateway-attached.png

4. Configured Route Tables
Created route tables and associated them with the correct subnets.
Screenshots:
./screenshots/public-route-table.png.png
./screenshots/private-route-table.png
./screenshots/route-table.png

5. Created Public and Private EC2 Instances
Launched two EC2 instances:
Instance	Purpose
Public-EC2	Bastion Host
Private-EC2	Internal Server
Screenshots:
./screenshots/public-EC2.png
./screenshots/private-EC2.png

6. Verified Private Network Connectivity
Confirmed communication between EC2 instances using private IP addresses.
Screenshot:
./screenshots/ping-private-ec2.png.png

7. Configured NAT Gateway
Created a NAT Gateway to allow outbound internet access from the private subnet.
Screenshots:
./screenshots/nat-gateway-pending.png
./screenshots/nat-gateway-available.png

8. Tested Internet Access
Verified outbound internet connectivity.
Screenshots:
./screenshots/private-internet-ping.png
./screenshots/private-curl-example.png

9. Connected to Public EC2
Successfully connected to the public EC2 instance using SSH.
Screenshot:
./screenshots/ssh-public-ec2.png


#Skills Demonstrated
- AWS VPC Configuration
- Subnet Design
- Internet Gateway Configuration
- NAT Gateway Configuration
- Route Table Management
- EC2 Deployment
- SSH Connectivity
- Private Networking
- Network Troubleshooting
- Cloud Infrastructure Fundamentals

#Key Learnings
- Difference between public and private subnets.
- How Internet Gateways provide inbound and outbound internet access.
- How NAT Gateways allow private resources to access the internet securely.
- How route tables control network traffic.
- How bastion hosts are used to access private infrastructure.
- How to troubleshoot connectivity issues using SSH, Ping, and Route Tables.

# Outcome
Successfully built a working AWS network consisting of public and private subnets, secure EC2 communication, internet connectivity through an Internet Gateway, and outbound internet access for private resources using a NAT Gateway.


