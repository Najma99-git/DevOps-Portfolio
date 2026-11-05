terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}


resource "aws_instance" "web_server" {
  ami                         = "ami-057b46c043e81dcf4"
  instance_type               = "t3.micro"
  associate_public_ip_address = true

  user_data = file("${path.module}/cloud-init.yaml")

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "Terraform-Cloud-Init-WebServer"
  }
}


resource "aws_security_group" "web_sg" {
  name        = "terraform-cloud-init-sg"
  description = "Allow HTTP traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Terraform-Cloud-Init-SG"
  }
}
