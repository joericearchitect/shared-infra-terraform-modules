module "env-security-group"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/security-group"
 
  region = "${var.region}"
  availability-zone-id = "${var.availability-zone-id}"
 
  aws-vpc-id = "${var.aws-vpc-id}"
  
  jra-subnet-type = "${var.jra-subnet-type}"
  jra-swarm-node-type = "${var.jra-swarm-node-type}"
  jra-swarm-node-type-name = "${var.jra-swarm-node-type-name}"
  jra-swarm-node-role = "${var.jra-swarm-node-role}"
  
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