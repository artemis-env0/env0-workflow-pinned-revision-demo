provider "local" {}

variable "marker_version_for_GPU_NVIDIA_RTX6000_GB202-INS-TYPE" {
  type        = string
  description = "Bump this to force a plan diff. Nvidia GPU DIFF"
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
