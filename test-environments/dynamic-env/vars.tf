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
variable "region-lookup" {
  description = "Lookup of region name to Aws region, i.e. 'region-1 = us-east-1', 'region-2 = us-west=1'"
  type = "map"
}

variable "region-cidr-lookup" {
  description = "Lookup of region name to unique cider block part.  i.e. 'region-1 = 0', 'region-2= 1'"
  type = "map"
}

variable "region-ami-lookup" {
  description = "Lookup of region name to AMI. "
  type = "map"
}

variable "availability-zone-lookup" {
  description = "Lookup of region name / availability zone to AWS availability zone"
  type = "map"
}

variable "availability-zone-subnet-cidr-lookup" {
  description = "Lookup of region name / availability zone name to unique subnet cidr block"
  type = "map"
}

# ---------------------------------------------------------------------------
# Swarm Node Variables
# ---------------------------------------------------------------------------
variable "public-swarm-node-type-lookup" {
  description = "Lookup of public swarm node types"
  type = "map"
}

variable "private-swarm-node-type-lookup" {
  description = "Lookup of private swarm node types"
  type = "map"
}

variable "public-swarm-node-type-aws-instance-type-lookup" {
  description = "Lookup of public swarm node types to aws instance types"
  type = "map"
}

variable "private-swarm-node-type-aws-instance-type-lookup" {
  description = "Lookup of private swarm node types to aws instance types"
  type = "map"
}

variable "public-swarm-node-type-aws-instance-count-lookup" {
  description = "Lookup of public swarm node types to # of aws instances to create"
  type = "map"
}

variable "private-swarm-node-type-aws-instance-count-lookup" {
  description = "Lookup of private swarm node types to # of aws instances to create"
  type = "map"
}

variable "public-swarm-node-type-swarm-node-role-lookup" {
  description = "Lookup of public swarm node types to # of aws instances to create"
  type = "map"
}

variable "private-swarm-node-type-swarm-node-role-lookup" {
  description = "Lookup of private swarm node types to # of aws instances to create"
  type = "map"
}

# ---------------------------------------------------------------------------
# VPC Variables
# ---------------------------------------------------------------------------
variable "vpc-cidr-1" {
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

