# ---------------------------------------------------------------------------
# VPC
# ---------------------------------------------------------------------------
resource "aws_vpc" "jra_vpc" {
	cidr_block = "${var.vpc-cidr-1}.${var.vpc-cidr-2}.${var.vpc-cidr-3}.${var.vpc-cidr-4}/${var.vpc-cidr-range}",
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
