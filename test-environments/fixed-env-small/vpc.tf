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
  
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  vpc-cidr-3 = "${var.vpc-cidr-3}"
  vpc-cidr-4 = "${var.vpc-cidr-4}"
  vpc-cidr-range = "${var.vpc-cidr-range}"
  
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

module "public-route-table"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/route-table"
  
  region = "${var.region}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  aws-internet-gateway-id = "${module.internet-gateway.aws-internet-gateway-id}"
  jra-subnet-type = "public"
  
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

module "private-route-table"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/route-table"
  
  region = "${var.region}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  aws-internet-gateway-id = "${module.internet-gateway.aws-internet-gateway-id}"
  jra-subnet-type = "private"
  
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

module "public-subnet"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/subnet"
  
  region = "${var.region}"
  availability-zone-id = "${lookup(var.availability-zone-lookup, "${var.region}.az-1")}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  aws-internet-gateway-id = "${module.internet-gateway.aws-internet-gateway-id}"
  aws-route-table-id = "${module.public-route-table.aws-route-table-id}"
  jra-subnet-type = "public"
  
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  
  subnet-cidr-3 = "1"
  subnet-cidr-4 = "${var.subnet-cidr-4}"
  subnet-cidr-range = "${var.subnet-cidr-range}"
  
  subnet-config-public-ip-on-launch = "true"
  
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
module "private-subnet"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/subnet"
  
  region = "${var.region}"
  availability-zone-id = "${lookup(var.availability-zone-lookup, "${var.region}.az-1")}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  aws-internet-gateway-id = "${module.internet-gateway.aws-internet-gateway-id}"
  aws-route-table-id = "${module.private-route-table.aws-route-table-id}"
  jra-subnet-type = "private"
 
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  
  subnet-cidr-3 = "2"
  subnet-cidr-4 = "${var.subnet-cidr-4}"
  subnet-cidr-range = "${var.subnet-cidr-range}"
  
  subnet-config-public-ip-on-launch = "true"
  
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

module "public-nat-gateway"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/nat-gateway"
  
  aws-subnet-id = "${module.public-subnet.aws-subnet-id}"
}