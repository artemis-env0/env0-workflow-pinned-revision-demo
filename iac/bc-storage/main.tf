provider "local" {}

variable "marker_version_NVME_MS_AZURE_STORAGE" {
  type        = string
  description = "Bump this to force a plan diff. AZ NVME STORAGE"
  default     = "1.0.1"
}

resource "local_file" "api_marker" {
  filename = "${path.module}/.env0-demo-${terraform.workspace}-storage-az-nvme.txt"
  content  = <<EOT
env0 demo marker
component=bc-storage
workspace=${terraform.workspace}
marker_version=${var.marker_version_NVME_MS_AZURE_STORAGE}
EOT
}
