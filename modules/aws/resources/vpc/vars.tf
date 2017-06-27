# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}
variable "availability-zone-lookup" { type = "map" }

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

# ---------------------------------------------------------------------------
# VPC Variables
# ---------------------------------------------------------------------------
variable "vpc-cidr-1" {}
variable "vpc-cidr-2" {}
variable "vpc-cidr-3" {}
variable "vpc-cidr-4" {}
variable "vpc-cidr-range" {}

variable "vpc-cidr" {
  default = "${vpc-cidr-1}.${vpc-cidr-2}.${vpc-cidr-3}.${vpc-cidr-4}/${vpc-cidr-range}"
}