# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}

# ---------------------------------------------------------------------------
# AWS Resource Variables
# ---------------------------------------------------------------------------
variable "aws-vpc-id" {}

# ---------------------------------------------------------------------------
# JRA Infra Variables
# ---------------------------------------------------------------------------
variable "environment-group" {}
variable "environment-instance-id" {}
variable "environment-canonical-id" {}
variable "environment-display-id" {}
variable "environment-name" {}
variable "environment-display-name" {}
variable "environment_type" {}
variable "environment-durability-type" {}
variable "environment-size" {}
