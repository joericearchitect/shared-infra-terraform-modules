
resource "aws_security_group" "security-group" {
	name = "${var.environment-name}.jra-sg.${var.region}-${var.jra-subnet-type}-${var.jra-swarm-node-type}"
	description = "Security Group for public web ui apps"

	ingress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

	vpc_id = "${var.aws-vpc-id}",

	tags {
        Name = "${var.environment-name}.jra-sg.${var.region}-${var.jra-subnet-type}-${var.jra-swarm-node-type}",
        jra.environment = "${var.environment-name}",
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${var.environment-instance-id}"
    }
}
