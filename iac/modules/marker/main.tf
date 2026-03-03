variable "environment" {
  type        = string
  description = "Environment identifier."
}

variable "component" {
  type        = string
  description = "Component name."
}

variable "marker_version" {
  type        = string
  description = "Bump this to force a plan diff."
}

resource "local_file" "marker" {
  filename = "${path.root}/.env0-demo-${var.environment}-${var.component}.txt"
  content  = <<EOT
env0 demo marker
environment=${var.environment}
component=${var.component}
workspace=${terraform.workspace}
marker_version=${var.marker_version}
EOT
}
