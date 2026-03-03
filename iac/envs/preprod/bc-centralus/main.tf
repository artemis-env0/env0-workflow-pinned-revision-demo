provider "local" {}

module "marker" {
  source         = "../../../modules/marker"
  environment    = "preprod-bc-centralus"
  component      = "bc"
  marker_version = "1.0.0"
}
