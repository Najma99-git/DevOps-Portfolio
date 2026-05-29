# AWS High Availability Web App

## Project Overview

This project demonstrates a highly available web application hosted on AWS using two EC2 instances, NGINX, and an Application Load Balancer (ALB).

The application remains accessible even if one web server becomes unavailable.

## Architecture

Internet → Application Load Balancer → EC2 Instance 1 (NGINX)

                  ↘ EC2 Instance 2 (NGINX)

## Technologies Used

* AWS EC2
* Application Load Balancer (ALB)
* Target Groups
* NGINX
* Linux (Ubuntu)
* SSH

## Project Steps

### 1. Launch EC2 Instances

* Created two Ubuntu EC2 instances.
* Connected using SSH.

### 2. Install NGINX

```bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

### 3. Create Custom Website

Created a custom HTML page displaying:

* AWS High Availability Web App
* Built By Najma Mohamed

### 4. Create Target Group

* Created Target Group: Najma-TargetGroup
* Protocol: HTTP
* Port: 80
* Health Check Path: /

### 5. Create Application Load Balancer

* Created ALB: Najma-LoadBalancer
* Attached both EC2 instances through the Target Group.

### 6. Verify Load Balancer

```bash
curl http://<ALB-DNS-NAME>
```

Successfully displayed the custom website.

### 7. High Availability Test

* Stopped one EC2 instance.
* Load Balancer automatically routed traffic to the healthy server.
* Website remained available.

## Key Learnings

* Configuring NGINX on AWS EC2.
* Using Target Groups and Health Checks.
* Implementing Load Balancing.
* Understanding High Availability concepts.
* Testing failover scenarios.

## Screenshots

Store project screenshots in:

```text
screenshots/
```

Examples:

* load-balancer.png
* target-group-healthy.png
* website-working.png
* failover-test.png

## Outcome

Successfully built a highly available web application using AWS EC2, NGINX, and an Application Load Balancer with failover capability.

**Live Website:** [http://Najma-LoadBalancer-1295821951.eu-west-2.elb.amazonaws.com](http://Najma-LoadBalancer-1295821951.eu-west-2.elb.amazonaws.com)
