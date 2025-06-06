terraform {
  backend "s3" {
    bucket = "goncalo-wp-terraform-state"
    key    = "infra/terraform.tfstate"
    region = "eu-west-1"
    encrypt = true
  }
}

provider "aws" {
  region = "eu-west-1" # Irlanda (Free Tier disponível)
}

resource "aws_s3_bucket" "bucket_backend" {
  bucket              = "goncalo-wp-terraform-state"
}