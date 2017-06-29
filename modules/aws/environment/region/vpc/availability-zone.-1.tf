module "env-availability-zone-1"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/environment/region/vpc/availability-zone"
    
  aws_key_name = "${var.aws_key_name}"
  
  region = "${var.region}"
  region-name = "${var.region-name}"
  
  availability-zone-id = "${lookup(var.availability-zone-lookup, "${var.region-name}.az-1")}"
  availability-zone-name = "az-1"
  
  jra-failure-zone = "${var.region}.${lookup(var.availability-zone-lookup, "${var.region-name}.az-1")}"
  jra-failure-zone-name = "${var.region-name}.az-1"
  
  region-ami-lookup = "${var.region-ami-lookup}"
  availability-zone-subnet-cidr-lookup = "${var.availability-zone-subnet-cidr-lookup}"
  
  aws-vpc-id = "${module.vpc.aws-vpc-id}"
  aws-internet-gateway-id = "${module.internet-gateway.aws-internet-gateway-id}"
  aws-private-route-table-id = "${module.private-route-table.aws-route-table-id}"
  aws-public-route-table-id = "${module.public-route-table.aws-route-table-id}"
  
  public-swarm-node-type-lookup = "${var.public-swarm-node-type-lookup}"
  private-swarm-node-type-lookup = "${var.private-swarm-node-type-lookup}"
  
  public-swarm-node-type-aws-instance-type-lookup = "${var.public-swarm-node-type-aws-instance-type-lookup}"
  private-swarm-node-type-aws-instance-type-lookup = "${var.private-swarm-node-type-aws-instance-type-lookup}"
  
  public-swarm-node-type-aws-instance-count-lookup = "${var.public-swarm-node-type-aws-instance-count-lookup}"
  private-swarm-node-type-aws-instance-count-lookup = "${var.private-swarm-node-type-aws-instance-count-lookup}"
  
  public-swarm-node-type-swarm-node-role-lookup = "${var.public-swarm-node-type-swarm-node-role-lookup}"
  private-swarm-node-type-swarm-node-role-lookup = "${var.private-swarm-node-type-swarm-node-role-lookup}"
  
  vpc-cidr-1 = "${var.vpc-cidr-1}"
  vpc-cidr-2 = "${var.vpc-cidr-2}"
  
  subnet-cidr-4 = "${var.subnet-cidr-4}"
  subnet-cidr-range = "${var.subnet-cidr-range}"
  
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
