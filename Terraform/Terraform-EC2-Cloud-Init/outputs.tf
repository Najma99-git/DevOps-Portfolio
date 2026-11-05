output "website_public_ip" {
  description = "Public IP address of my EC2 website"
  value       = aws_instance.web_server.public_ip
}
