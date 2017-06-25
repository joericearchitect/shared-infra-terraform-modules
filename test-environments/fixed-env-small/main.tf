module "aws" {
  source = "./../../modules/aws/resources/aws"
}

module "vpc" {
  source = "./../../modules/aws/resources/vpc"
}