module "env-public-swarm-node-1"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/environment/region/vpc/availability-zone/swarm-node"
  
  aws_key_name = "${var.aws_key_name}"
  
  region = "${var.region}"
  region-name = "${var.region-name}"
  
  availability-zone-id = "${var.availability-zone-id}"
  availability-zone-name = "${var.availability-zone-name}" 
 
  jra-failure-zone = "${var.jra-failure-zone}"
  jra-failure-zone-name = "${var.jra-failure-zone-name}"
  
  subnet-name = "${var.subnet-name}"
  
  aws-vpc-id = "${var.aws-vpc-id}"
  aws-subnet-id = "${module.public-subnet.aws-subnet-id}"
  aws-ec2-instance-ami = "${lookup(var.region-ami-lookup, "${var.region-name}")}"
  
  jra-subnet-type = "public"
  
  jra-swarm-node-type = "${lookup(var.public-swarm-node-type-lookup, "public-swarm-node-type-1")}"
  jra-swarm-node-type-name = "public-swarm-node-type-1"
  jra-swarm-node-role = "${lookup(var.public-swarm-node-type-swarm-node-role-lookup, "public-swarm-node-type-1")}"
  jra-swarm-node-aws-instance-type = "${lookup(var.public-swarm-node-type-aws-instance-type-lookup, "public-swarm-node-type-1")}"
  jra-swarm-node-aws-instance-count = "${lookup(var.public-swarm-node-type-aws-instance-count-lookup, "public-swarm-node-type-1")}"
  
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