# ---------------------------------------------------------------------------
# AWS Access & Key variables - must be passed ins
# ---------------------------------------------------------------------------
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path" {}
variable "aws_key_name" {}

# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}

variable "availability-zone-lookup" {
  type = "map"
}

# ---------------------------------------------------------------------------
# VPC Variables
# ---------------------------------------------------------------------------
variable "vpc-cidr-1" {}
variable "vpc-cidr-2" {}
variable "vpc-cidr-3" {}
variable "vpc-cidr-4" {}
variable "vpc-cidr-range" {}

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

