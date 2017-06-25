
# ---------------------------------------------------------------------------
# Private Subnets
#  - private subnets
#  - route table for subnets
#  - route table associations to all private subnets
# ---------------------------------------------------------------------------
resource "aws_subnet" "az-1-private" {
	vpc_id = "${aws_vpc.jra_vpc.id}"

	cidr_block = "10.0.1.0/24"
	availability_zone = "${lookup(var.availability-zone-lookup, "${var.region}.az-1")}",
	map_public_ip_on_launch = "true"

	tags {
        Name = "${var.environment-name}.subnet.${lookup(var.availability-zone-lookup, "${var.region}.az-1")}-private",
        jra.environment = "${var.environment-name}",
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${random_id.env-instance.b64}"
    	jra.failure-zone = "${var.region}-az-1"
    }
}

resource "aws_subnet" "az-2-private" {
	vpc_id = "${aws_vpc.jra_vpc.id}"

	cidr_block = "10.0.3.0/24"
	availability_zone = "${lookup(var.availability-zone-lookup, "${var.region}.az-2")}",
	map_public_ip_on_launch = "true"

	tags {
        Name = "${var.environment-name}.subnet.${lookup(var.availability-zone-lookup, "${var.region}.az-2")}-private",
        jra.environment = "${var.environment-name}",
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${random_id.env-instance.b64}"
    	jra.failure-zone = "${var.region}-az-2"
    }
}

resource "aws_subnet" "az-3-private" {
	vpc_id = "${aws_vpc.jra_vpc.id}"

	cidr_block = "10.0.5.0/24"
	availability_zone = "${lookup(var.availability-zone-lookup, "${var.region}.az-3")}",
	map_public_ip_on_launch = "true"

	tags {
        Name = "${var.environment-name}.subnet.${lookup(var.availability-zone-lookup, "${var.region}.az-3")}-private",
        jra.environment = "${var.environment-name}"
    	jra.failure-zone = "${var.region}-az-3",
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${random_id.env-instance.b64}"
    }
}

# Associate private subnets to private routing table

resource "aws_route_table_association" "az-1-private" {
	subnet_id = "${aws_subnet.az-1-private.id}"
	route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "az-2-private" {
	subnet_id = "${aws_subnet.az-2-private.id}"
	route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "az-3-private" {
	subnet_id = "${aws_subnet.az-3-private.id}"
	route_table_id = "${aws_route_table.private.id}"
}
