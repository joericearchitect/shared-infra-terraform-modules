# ---------------------------------------------------------------------------
# Set Environment Instance Id
# ---------------------------------------------------------------------------
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

# ---------------------------------------------------------------------------
# Set Environment Instance Id
# ---------------------------------------------------------------------------
resource "random_id" "env-instance" {
  byte_length = 8
}

module "vpc"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/vpc"
  
  region = "${var.region}"
  availability-zone-lookup = "${var.availability-zone-lookup}"
  
  vpc_cidr = "${var.vpc_cidr}"
  public_subnet_cidr = "${var.public_subnet_cidr}"
  private_subnet_cidr = "${var.private_subnet_cidr}"
  
  environment-group= "${var.environment-group}"
  environment-instance-id = "${random_id.env-instance.b64}"
  environment-canonical-id = "${var.environment-canonical-id}"
  environment-display-id = "${var.environment-display-id}"
  environment-name = "${var.environment-name}"
  environment-display-name = "${var.environment-display-name}"
  environment_type = "${var.environment_type}"
  environment-durability-type = "${var.environment-durability-type}"
  environment-size = "${var.environment-size}"
}

module "internet-gateway"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/internet-gateway"
  
  region = "${var.region}"
  availability-zone-lookup = "${var.availability-zone-lookup}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  
  environment-group= "${var.environment-group}"
  environment-instance-id = "${random_id.env-instance.b64}"
  environment-canonical-id = "${var.environment-canonical-id}"
  environment-display-id = "${var.environment-display-id}"
  environment-name = "${var.environment-name}"
  environment-display-name = "${var.environment-display-name}"
  environment_type = "${var.environment_type}"
  environment-durability-type = "${var.environment-durability-type}"
  environment-size = "${var.environment-size}"
}