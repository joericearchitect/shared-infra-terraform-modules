# ---------------------------------------------------------------------------
# Routing table for subnets
# ---------------------------------------------------------------------------
resource "aws_route_table" "route-table" {
	vpc_id = "${var.aws-vpc-id}"

	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = "${var.aws-internet-gateway-id}"
	},

	tags {
        Name = "${var.environment-name}.route-table.${var.region}-${var.jra-subnet-type}",
        jra.environment = "${var.environment-name}"
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${var.environment-instance-id},
        jra-subnet-type = "${var.jra-subnet-type}"
    }
}