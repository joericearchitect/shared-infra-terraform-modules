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
  description = "Availability Zones per region and failure zones"
  type = "map"
  default = {
    us-east-1.az-1 = "us-east-1a"
    us-east-1.az-2 = "us-east-1b"
    us-east-1.az-3 = "us-east-1c"
    us-east-1.az-4 = "us-east-1d"
    us-west-1.az-1 = "us-west-1a"
    us-west-1.az-2 = "us-west-1b"
    us-west-1.az-3 = "us-west-1c"
    us-west-1.az-4 = "us-west-1d"
  }
}

# ---------------------------------------------------------------------------
# VPC Variables
# ---------------------------------------------------------------------------
variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
}

variable "subnet-cidr-prefix" {
    description = "CIDR for the Public Subnet"
}

variable "subnet-cidr-postfix" {
    description = "CIDR for the Public Subnet"
}

variable "subnet-cidr-range" {
    description = "CIDR for the Public Subnet"
}


# ---------------------------------------------------------------------------
# JRA Infra Variables
# ---------------------------------------------------------------------------
variable "environment-group" {
    description = "The group this environment belongs to.  This field allows to group environments of the same group. "
}
variable "environment-canonical-id" {
    description = "The canonical id for the enviornment."
}
variable "environment-display-id" {
    description = "The display id of the environment.  This id is url-friendly and will be used in UIs, logging, metrics, etc"
}
variable "environment-name" {
    description = "The name of the environment"
}
variable "environment-display-name" {
    description = "The display name of the environment"
}
variable "environment-description" {
    description = "A description of the enviornment"
}
variable "environment_type" {
    description = "The type of environment this resource is running in"
}
variable "environment-durability-type" {
    description = "Durability type for the environment.  eg: fixed, disposable, short-term, etc"
}
variable "environment-size" {
    description = "The size of the environment"
}

