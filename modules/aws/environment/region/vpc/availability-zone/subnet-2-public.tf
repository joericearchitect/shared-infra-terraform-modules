module "env-public-subnet"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/environment/region/vpc/availability-zone/public-subnet"
    
  aws_key_name = "${var.aws_key_name}"
  
  region = "${var.region}"
  region-name = "${var.region-name}"
  
  availability-zone-id = "${var.availability-zone-id}"
  availability-zone-name = "${var.availability-zone-name}" 
  
  jra-failure-zone = "${var.jra-failure-zone}"
  jra-failure-zone-name = "${var.jra-failure-zone-name}"
  
  region-ami-lookup = "${var.region-ami-lookup}"
  availability-zone-subnet-cidr-lookup = "${var.availability-zone-subnet-cidr-lookup}"
  
  subnet-name = "subnet-2"
  
  public-swarm-node-type-lookup = "${var.public-swarm-node-type-lookup}"
  public-swarm-node-type-aws-instance-type-lookup = "${var.public-swarm-node-type-aws-instance-type-lookup}"
  public-swarm-node-type-aws-instance-count-lookup = "${var.public-swarm-node-type-aws-instance-count-lookup}"
  public-swarm-node-type-swarm-node-role-lookup = "${var.public-swarm-node-type-swarm-node-role-lookup}"
  
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  
  subnet-cidr-3 = "${lookup(var.availability-zone-subnet-cidr-lookup, "${var.availability-zone-name}.subnet-2")}"
  subnet-cidr-4 = "${var.subnet-cidr-4}"
  subnet-cidr-range = "${var.subnet-cidr-range}"
  
  aws-vpc-id = "${var.aws-vpc-id}"
  aws-internet-gateway-id = "${var.aws-internet-gateway-id}"
  aws-route-table-id = "${var.aws-public-route-table-id}"
  
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
