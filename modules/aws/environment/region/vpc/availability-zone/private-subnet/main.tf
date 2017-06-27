module "private-subnet"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/subnet"
  
  region = "${var.region}"
  region-name = "${var.region-name}"
  
  availability-zone-id = "${var.availability-zone-id}"
  availability-zone-name = "${var.availability-zone-name}" 
  
  region-ami-lookup = "${var.region-ami-lookup}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  aws-internet-gateway-id = "${module.internet-gateway.aws-internet-gateway-id}"
  aws-route-table-id = "${module.private-route-table.aws-route-table-id}"
  jra-subnet-type = "private"
 
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  
  subnet-cidr-3 = "${var.subnet-cidr-3}"
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