# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}
variable "aws-availability-zone-id" {}

# ---------------------------------------------------------------------------
# AWS Resource Variables
# ---------------------------------------------------------------------------
variable "aws-vpc-id" {}
variable "aws-internet-gateway-id" {}
variable "aws-route-table-id" {}

# ---------------------------------------------------------------------------
# JRA Resource Variables
# ---------------------------------------------------------------------------
variable "jra-subnet-type" {}

# ---------------------------------------------------------------------------
# AWS Subnet Config Variables
# ---------------------------------------------------------------------------
variable "subnet-cidr-prefix" {}
variable "subnet-cidr-unique" {}
variable "subnet-cidr-postfix" {}
variable "subnet-cidr-range" {}
variable "subnet-config-public-ip-on-launch" {}

# ---------------------------------------------------------------------------
# JRA Infra Variables
# ---------------------------------------------------------------------------
variable "environment-group" {}
variable "environment-canonical-id" {}
variable "environment-display-id" {}
variable "environment-name" {}
variable "environment-display-name" {}
variable "environment_type" {}
variable "environment-durability-type" {}
variable "environment-size" {}
