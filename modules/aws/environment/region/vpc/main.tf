module "vpc"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/vpc"
  
  region = "${var.region}"
  availability-zone-lookup = "${var.availability-zone-lookup}"
  
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  vpc-cidr-3 = "${var.vpc-cidr-3}"
  vpc-cidr-4 = "${var.vpc-cidr-4}"
  vpc-cidr-range = "${var.vpc-cidr-range}"
  
  environment-group= "${var.environment-group}"
  environment-instance-id = "${var.environment-instance-id}"
  environment-canonical-id = "${var.environment-canonical-id}"
  environment-display-id = "${var.environment-display-id}"
  environment-name = "${var.environment-name}"
  environment-display-name = "${var.environment-display-name}"
  environment-description = "${var.environment-description}"
  environment_type = "${var.environment_type}"
  environment-durability-type = "${var.environment-durability-type}"
  environment-size = "${var.environment-size}"
}

module "internet-gateway"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/internet-gateway"
  
  region = "${var.region}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  
  environment-group= "${var.environment-group}"
  environment-instance-id = "${var.environment-instance-id}"
  environment-canonical-id = "${var.environment-canonical-id}"
  environment-display-id = "${var.environment-display-id}"
  environment-name = "${var.environment-name}"
  environment-display-name = "${var.environment-display-name}"
  environment_type = "${var.environment_type}"
  environment-durability-type = "${var.environment-durability-type}"
  environment-size = "${var.environment-size}"
}

module "public-route-table"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/route-table"
  
  region = "${var.region}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  aws-internet-gateway-id = "${module.internet-gateway.aws-internet-gateway-id}"
  jra-subnet-type = "public"
  
  environment-group= "${var.environment-group}"
  environment-instance-id = "${var.environment-instance-id}"
  environment-canonical-id = "${var.environment-canonical-id}"
  environment-display-id = "${var.environment-display-id}"
  environment-name = "${var.environment-name}"
  environment-display-name = "${var.environment-display-name}"
  environment_type = "${var.environment_type}"
  environment-durability-type = "${var.environment-durability-type}"
  environment-size = "${var.environment-size}"
}

module "private-route-table"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/route-table"
  
  region = "${var.region}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  aws-internet-gateway-id = "${module.internet-gateway.aws-internet-gateway-id}"
  jra-subnet-type = "private"
  
  environment-group = "${var.environment-group}"
  environment-instance-id = "${var.environment-instance-id}"
  environment-canonical-id = "${var.environment-canonical-id}"
  environment-display-id = "${var.environment-display-id}"
  environment-name = "${var.environment-name}"
  environment-display-name = "${var.environment-display-name}"
  environment_type = "${var.environment_type}"
  environment-durability-type = "${var.environment-durability-type}"
  environment-size = "${var.environment-size}"
}

