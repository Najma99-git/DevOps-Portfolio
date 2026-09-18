variable "project_name" {
  description = "Name of the project"
  type        = string
}



variable "environment" {
  description = "Environment for the project"
  type        = string
}



variable "server_count" {
  description = "Number of web servers to create"
  type        = number
}
