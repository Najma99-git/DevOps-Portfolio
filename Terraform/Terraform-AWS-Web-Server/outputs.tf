output "web_server_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web_server.public_ip
}

output "website_url" {
  description = "URL of the NGINX web server"
  value       = "http://${aws_instance.web_server.public_ip}"
}
