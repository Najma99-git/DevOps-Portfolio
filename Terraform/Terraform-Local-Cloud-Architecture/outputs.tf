output "project_name" {
  description = "Name of the Terraform project"
  value       = var.project_name
}

output "environment" {
  description = "Deployment environment"
  value       = var.environment
}

output "web_servers" {
  description = "Web servers created by Terraform"
  value       = local_file.web_servers[*].filename
}

output "load_balancer" {
  description = "Load balancer configuration file"
  value       = local_file.load_balancer.filename
}
