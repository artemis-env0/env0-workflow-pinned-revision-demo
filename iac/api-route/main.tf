provider "local" {}

variable "marker_version" {
  type        = string
  description = "Bump this to force a plan diff."
  default     = "1.0.0"
}

resource "local_file" "api_marker" {
  filename = "${path.module}/.env0-demo-${terraform.workspace}-api-route.txt"
  content  = <<EOT
env0 demo marker
component=api-route
workspace=${terraform.workspace}
marker_version=${var.marker_version}
EOT
}
