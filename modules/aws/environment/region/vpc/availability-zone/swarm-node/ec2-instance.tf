module "env-ec2-instance"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/ec2-instance"
 
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
  
  jra-subnet-type = "${var.jra-subnet-type}"
  jra-swarm-node-type = "${var.jra-swarm-node-type}"
  jra-swarm-node-type-name = "${var.jra-swarm-node-type-name}"
  jra-swarm-node-role = "${var.jra-swarm-node-role}"
  jra-swarm-node-aws-instance-type = "${var.jra-swarm-node-aws-instance-type}"
  jra-swarm-node-aws-instance-count = "${var.jra-swarm-node-aws-instance-count}"
  
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