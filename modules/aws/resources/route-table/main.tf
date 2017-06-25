# ---------------------------------------------------------------------------
# Routing table for subnets
# ---------------------------------------------------------------------------
resource "aws_route_table" "public" {
	vpc_id = "${aws_vpc.jra_vpc.id}"

	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = "${aws_internet_gateway.jra_igw.id}"
	},

	tags {
        Name = "${var.environment-name}.route-table.${var.region}-public",
        jra.environment = "${var.environment-name}"
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${var.environment-instance-id}"
    }
}