module "aws" {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/aws"
  
  region = "${var.region}"
}

module "vpc" {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/vpc"
}