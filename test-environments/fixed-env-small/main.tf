provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

module "vpc" {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/vpc"
  
  region = "${var.region}"
  availability-zone-lookup = "${var.availability-zone-lookup}"
  environment-display-id = "${var.environment-display-id}"
  public_subnet_cidr = "${var.public_subnet_cidr}"
  vpc_cidr = "${var.vpc_cidr}"
  environment-group = "${var.environment-group}"
  environment-canonical-id = "${var.environment-canonical-id}"
  environment-name = "${var.environment-name}"
  environment-display-name = "${var.environment-display-name}"
  environment_type = "${var.environment_type}"
  environment-durability-type = "${var.environment-durability-type}"
  environment-size = "${var.environment-size}"
  private_subnet_cidr = "${var.private_subnet_cidr}"
}