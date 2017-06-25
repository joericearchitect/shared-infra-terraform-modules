provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

module "vpc" {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/vpc"
  
  region = "${var.region}"
}