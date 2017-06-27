module "env-private-subnet"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/vpc/availability-zone/private-subnet"
  
  region = "${var.region}"
  region-name = "${var.region-name}"
  
  availability-zone-id = "${var.availability-zone-id}"
  availability-zone-name = "${var.availability-zone-name}" 
  
  region-ami-lookup = "${var.region-ami-lookup}"
  availability-zone-subnet-cidr-lookup = "${var.availability-zone-subnet-cidr-lookup}"
  
  subnet-name = "subnet-1"
  
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  
  subnet-cidr-3 = "${lookup(var.availability-zone-subnet-cidr-lookup, "${var.availability-zone-name}.subnet-1")}"
  subnet-cidr-4 = "${var.subnet-cidr-4}"
  subnet-cidr-range = "${var.subnet-cidr-range}"
  
  aws-vpc-id = "${var.aws-vpc-id}"
  aws-internet-gateway-id = "${var.aws-internet-gateway-id}"
  aws-route-table-id = "${var.aws-private-route-table-id}"
  
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
