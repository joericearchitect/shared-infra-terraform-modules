# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}
variable "availability-zone-id" {}

# ---------------------------------------------------------------------------
# AWS Resource Variables
# ---------------------------------------------------------------------------
variable "aws-vpc-id" {}

# ---------------------------------------------------------------------------
# JRA Infra Swarm Node Variables
# ---------------------------------------------------------------------------
variable "jra-subnet-type" {}
variable "jra-swarm-node-type" {}
variable "jra-swarm-node-type-name" {}
variable "jra-swarm-node-role" {}

# ---------------------------------------------------------------------------
# JRA Infra Envoironment Variables
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
