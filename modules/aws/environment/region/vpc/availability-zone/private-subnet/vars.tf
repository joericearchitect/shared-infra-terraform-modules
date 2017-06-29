# ---------------------------------------------------------------------------
# AWS Access & Key variables - must be passed ins
# ---------------------------------------------------------------------------
variable "aws_key_name" {}

# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}
variable "region-name" {}

variable "availability-zone-id" {}
variable "availability-zone-name" {}

variable "subnet-name" {}

variable "region-ami-lookup" { type = "map" }
variable "availability-zone-subnet-cidr-lookup" { type = "map" }

# ---------------------------------------------------------------------------
# AWS Resource Variables
# ---------------------------------------------------------------------------
variable "aws-vpc-id" {}
variable "aws-internet-gateway-id" {}
variable "aws-route-table-id" {}

# ---------------------------------------------------------------------------
# Swarm Node Variables
# ---------------------------------------------------------------------------
variable "private-swarm-node-type-lookup" { type = "map" }
variable "private-swarm-node-type-aws-instance-type-lookup" { type = "map" }
variable "private-swarm-node-type-aws-instance-count-lookup" { type = "map" }
variable "private-swarm-node-type-swarm-node-role-lookup" { type = "map" }

# ---------------------------------------------------------------------------
# VPC Variables
# ---------------------------------------------------------------------------
variable "vpc-cidr-1" {}
variable "vpc-cidr-2" {}

variable "subnet-cidr-3" {}
variable "subnet-cidr-4" {}
variable "subnet-cidr-range" {}


# ---------------------------------------------------------------------------
# JRA Infra Variables
# ---------------------------------------------------------------------------
variable "jra-failure-zone" {}
variable "jra-failure-zone-name" {}

variable "environment-group" {}
variable "environment-instance-id" {}
variable "environment-canonical-id" {}
variable "environment-display-id" {}
variable "environment-name" {}
variable "environment-display-name" {}
variable "environment_type" {}
variable "environment-durability-type" {}
variable "environment-size" {}

