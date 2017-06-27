module "public-subnet"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/subnet"
  
  region = "${var.region}"
  
  availability-zone-id = "${var.availability-zone-id}"
  
  aws-vpc-id = "${var.aws-vpc-id}"
  aws-internet-gateway-id = "${var.aws-internet-gateway-id}"
  aws-route-table-id = "${var.aws-route-table-id}"
  jra-subnet-type = "public"
 
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  
  subnet-cidr-3 = "${var.subnet-cidr-3}"
  subnet-cidr-4 = "${var.subnet-cidr-4}"
  subnet-cidr-range = "${var.subnet-cidr-range}"
  
  subnet-config-public-ip-on-launch = 	"true"
  
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