# ---------------------------------------------------------------------------
# Swarm Manager Instances
#  - EC2 Instances for across 3 avail zones
# ---------------------------------------------------------------------------
resource "aws_instance" "aws-ec2-instance" {
	ami = "${var.aws-ec2-instance-ami}"
	availability_zone = "${var.availability-zone-id}"
	instance_type = "${var.jra-swarm-node-aws-instance-type}"
	key_name = "${var.aws_key_name}"
	security_groups = ["${var.aws-security-group-id}"]
	subnet_id = "${var.aws-subnet-id}",
	provisioner "local-exec" {
       command = "echo "
    }

	tags {
        Name = "${var.environment-name}.instance.${var.jra-swarm-node-role}.${var.jra-swarm-node-type}.${var.environment-name}.${var.availability-zone-id}",
        jra.instance-name-full = "${var.environment-name}.instance.${var.jra-swarm-node-role}.${var.jra-swarm-node-type}.${var.environment-name}.${var.availability-zone-id}"
        jra.instance-name = "${var.jra-swarm-node-type}-${var.availability-zone-id}"
        jra.environment = "${var.environment-name}"
        jra.environment_type = "${var.environment_type}"
        jra.environment-instance-id = "${var.environment-instance-id}"
    	jra.failure-zone = "${var.jra-failure-zone}"
    	jra.failure-zone-name = "${var.jra-failure-zone-name}"
    	jra.environment-size = "${var.environment-size}"
    	jra.swarm-instance-type = "swarm-manager"
    	jra.swarm-node-type = "infra-swarm-manager"
    	jra.subnet-type = "private"
    }
}