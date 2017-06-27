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
variable "regions" {
  description = "List of regions"
  type = "list"
}

variable "availability-zone-lookup" {
  description = "Availability Zones per region and failure zones"
  type = "map"
}

# ---------------------------------------------------------------------------
# VPC Variables
# ---------------------------------------------------------------------------
variable "vpc-cidr-1" {
    description = "CIDR for the whole VPC"
}
variable "vpc-cidr-2" {
    description = "CIDR for the whole VPC"
}
variable "vpc-cidr-3" {
    description = "CIDR for the whole VPC"
}
variable "vpc-cidr-4" {
    description = "CIDR for the whole VPC"
}
variable "vpc-cidr-range" {
    description = "CIDR for the whole VPC"
}

variable "subnet-cidr-4" {
    description = "CIDR for the whole VPC"
}
variable "subnet-cidr-range" {
    description = "CIDR for the whole VPC"
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

