terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "website" {
  filename = "${path.module}/index.html"

  content = <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Project</title>
</head>
<body>
    <h1>My DevOps Project!</h1>
    <p>Infrastructure created by Terraform.</p>
</body>
</html>
EOF
}
