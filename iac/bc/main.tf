provider "local" {}

variable "marker_version" {
  description = "Version string written into the api marker file"
  type        = string
}

resource "local_file" "bc_marker" {
  filename = "${path.module}/.env0-demo-${terraform.workspace}-bc.txt"
  content  = <<EOT
env0 demo marker
component=bc
workspace=${terraform.workspace}
marker_version=${var.marker_version}
EOT
}
