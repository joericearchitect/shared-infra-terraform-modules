module "env-vpc"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/environment/region/vpc"
  
  region = "${var.region}"
  region-name = "${var.region-name}"
  
  region-ami-lookup = "${var.region-ami-lookup}"
  
  availability-zone-lookup = "${var.availability-zone-lookup}"
  availability-zone-subnet-cidr-lookup = "${var.availability-zone-subnet-cidr-lookup}"
  
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
  vpc-cidr-3 = "${var.vpc-cidr-3}"
  vpc-cidr-4 = "${var.vpc-cidr-4}"
  vpc-cidr-range = "${var.vpc-cidr-range}"
  
  subnet-cidr-4 = "${var.subnet-cidr-4}"
  subnet-cidr-range = "${var.subnet-cidr-range}"
  
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