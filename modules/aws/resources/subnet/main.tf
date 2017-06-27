# ---------------------------------------------------------------------------
# Subnet
# ---------------------------------------------------------------------------
resource "aws_subnet" "subnet" {
	vpc_id = "${var.aws-vpc-id}"

	cidr_block = "${vpc-cidr-1}.${vpc-cidr-2}.${subnet-cidr-3}.${subnet-cidr-4}/${subnet-cidr-range}"
	availability_zone = "${var.availability-zone-id}",
	map_public_ip_on_launch = "${var.subnet-config-public-ip-on-launch}"

	tags {
        Name = "${var.environment-name}.subnet.${var.availability-zone-id}-${var.jra-subnet-type}",
        jra.environment = "${var.environment-name}",
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${var.environment-instance-id}"
    	jra.failure-zone = "${var.region}-az-1"
    }
}

# ---------------------------------------------------------------------------
# Associate subnet to routing table
# ---------------------------------------------------------------------------
resource "aws_route_table_association" "route-table-association" {
	subnet_id = "${aws_subnet.subnet.id}"
	route_table_id = "${var.aws-route-table-id}"
}
