provider "local" {}

module "marker" {
  source         = "../../../modules/marker"
  environment    = "preprod-api-route"
  component      = "api-route"
  marker_version = "1.0.0"
}
