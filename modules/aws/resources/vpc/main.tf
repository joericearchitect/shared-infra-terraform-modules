# ---------------------------------------------------------------------------
# VPC
# ---------------------------------------------------------------------------
resource "aws_vpc" "jra_vpc" {
	cidr_block = "${var.vpc_cidr}",
	enable_dns_support = "true",
	enable_dns_hostnames  = "true",

	tags {
        Name = "${var.environment-name}.vpc.${var.region}",
        jra.environment = "${var.environment-name}",
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${var.environment-instance-id}"
    }
}

# ---------------------------------------------------------------------------
# Internet Gateway
# ---------------------------------------------------------------------------
resource "aws_internet_gateway" "jra_igw" {
	vpc_id = "${aws_vpc.jra_vpc.id}",

	tags {
        Name = "${var.environment-name}.igw.${var.region}",
        jra.environment = "${var.environment-name}"
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${var.environment-instance-id}"
    }
}

# ---------------------------------------------------------------------------
# Routing table for public subnets
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

# ---------------------------------------------------------------------------
# Routing table for public subnets
# ---------------------------------------------------------------------------
resource "aws_route_table" "private" {
	vpc_id = "${aws_vpc.jra_vpc.id}"

	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = "${aws_internet_gateway.jra_igw.id}"
	},

	tags {
        Name = "${var.environment-name}.route-table.${var.region}-private",
        jra.environment = "${var.environment-name}"
        jra.environment_type = "${var.environment_type}",
    	jra.environment-size = "${var.environment-size}",
        jra.environment-instance-id = "${var.environment-instance-id}"
    }
}
