terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {
}

resource "local_file" "architecture_info" {
  filename = "${path.module}/architecture.txt"
  content  = "Project: ${var.project_name}\nEnvironment: ${var.environment}"
}


resource "local_file" "web_servers" {
  count = var.server_count

  filename = "${path.module}/web-server-${count.index + 1}.txt"

  content = templatefile("${path.module}/templates/server.tpl", {
    server_name  = "web-server-${count.index + 1}"
    project_name = var.project_name
    environment  = var.environment
  })
}



resource "local_file" "load_balancer" {
  filename = "${path.module}/load-balancer.txt"

  content = templatefile("${path.module}/templates/load-balancer.tpl", {
    load_balancer_name = "web-load-balancer"
    project_name       = var.project_name
    environment        = var.environment
    servers            = join("\n", local_file.web_servers[*].filename)
  })
}
