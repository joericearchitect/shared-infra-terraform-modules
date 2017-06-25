module "aws" {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/aws"
  
  region = "${var.region}"
  aws_access_key = "${var.aws_access_key}"
  aws_secret_key = "${var.aws_secret_key}"
}

module "vpc" {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/vpc"
  
  region = "${var.region}"
}