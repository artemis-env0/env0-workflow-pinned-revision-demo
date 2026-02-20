provider "local" {}

variable "marker_version_for_CPU_AMD_EPYC" {
  type        = string
  description = "Bump this to force a plan diff. AMD EPYC CPU DIFF"
  default     = "1.0.1"
}

resource "local_file" "api_marker" {
  filename = "${path.module}/.env0-demo-${terraform.workspace}-epyc-cpu-route.txt"
  content  = <<EOT
env0 demo marker
component=api-route
workspace=${terraform.workspace}
marker_version=${var.marker_version}
EOT
}
