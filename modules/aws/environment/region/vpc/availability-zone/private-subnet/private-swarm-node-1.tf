module "env-private-swarm-node-1"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/environment/region/vpc/availability-zone/swarm-node"
  
  region = "${var.region}"
  region-name = "${var.region-name}"
  
  availability-zone-id = "${var.availability-zone-id}"
  availability-zone-name = "${var.availability-zone-name}" 
 
  jra-failure-zone = "${var.jra-failure-zone}"
  jra-failure-zone-name = "${var.jra-failure-zone-name}"
  
  subnet-name = "${var.subnet-name}"
  
  aws-vpc-id = "${var.aws-vpc-id}"
  aws-subnet-id = "${var.aws-subnet-id}"
  aws-ec2-instance-ami = "${var.aws-ec2-instance-ami}"
  
  jra-subnet-type = "private"
  
  jra-swarm-node-type = "${lookup(var.private-swarm-node-type-lookup, "private-swarm-node-type-1")}"
  jra-swarm-node-type-name = "private-swarm-node-type-1"
  jra-swarm-node-role = "${lookup(var.private-swarm-node-type-swarm-node-role-lookup, "private-swarm-node-type-1")}"
  jra-swarm-node-aws-instance-type = "${lookup(var.private-swarm-node-type-aws-instance-type-lookup, "private-swarm-node-type-1")}"
  jra-swarm-node-aws-instance-count = "${lookup(var.private-swarm-node-type-aws-instance-count-lookup, "private-swarm-node-type-1")}"
  
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