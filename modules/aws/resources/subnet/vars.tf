# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}
variable "availability-zone-lookup" { type = "map" }

# ---------------------------------------------------------------------------
# AWS Resource Variables
# ---------------------------------------------------------------------------
variable "aws-vpc-id" {}
variable "aws-internet-gateway-id" {}
variable "aws-route-table  -id" {}
variable "jra-subnet-type" {}

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
