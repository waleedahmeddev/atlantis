terraform {
  backend "s3" {
    bucket  = "wld-edge"
    key     = "atlantics/terraform.tfstate"
    region  = "eu-central-1"
    profile = "dev_work"
  }
}
