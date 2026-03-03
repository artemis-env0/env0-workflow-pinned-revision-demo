provider "local" {}

module "marker" {
  source         = "../../../modules/marker"
  environment    = "preprod-bc-eastus2"
  component      = "bc"
  marker_version = "1.0.0"
}
