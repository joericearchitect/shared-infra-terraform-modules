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
variable "environment-group" {}
variable "environment-instance-id" {}
variable "environment-canonical-id" {}
variable "environment-display-id" {}
variable "environment-name" {}
variable "environment-display-name" {}
variable "environment-description" {}
variable "environment_type" {}
variable "environment-durability-type" {}
variable "environment-size" {}

