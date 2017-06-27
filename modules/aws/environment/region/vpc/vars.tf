# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}
variable "region-name" {}

variable "region-ami-lookup" { type = "map" }

variable "availability-zone-lookup" { type = "map" }

variable "availability-zone-subnet-cidr-lookup" { type = "map" }


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
variable "environment_type" {}
variable "environment-durability-type" {}
variable "environment-size" {}

