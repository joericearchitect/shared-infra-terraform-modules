# ---------------------------------------------------------------------------
# AWS Access & Key variables - must be passed ins
# ---------------------------------------------------------------------------
variable "aws_key_name" {}

# ---------------------------------------------------------------------------
# Region, Avail Zone, and AMI Info
# ---------------------------------------------------------------------------
variable "region" {}
variable "region-name" {}

variable "availability-zone-id" {}
variable "availability-zone-name" {}

# ---------------------------------------------------------------------------
# AWS Resource Variables
# ---------------------------------------------------------------------------
variable "aws-vpc-id" {}
variable "aws-subnet-id" {}
variable "aws-security-group-id" {}
variable "aws-ec2-instance-ami" {}

# ---------------------------------------------------------------------------
# JRA Infra Swarm Node Variables
# ---------------------------------------------------------------------------
variable "jra-subnet-type" {}
variable "jra-swarm-node-type" {}
variable "jra-swarm-node-type-name" {}
variable "jra-swarm-node-role" {}
variable "jra-swarm-node-aws-instance-type" {}
variable "jra-swarm-node-aws-instance-count" {}

# ---------------------------------------------------------------------------
# JRA Infra Envoironment Variables
# ---------------------------------------------------------------------------
variable "jra-failure-zone" {}
variable "jra-failure-zone-name" {}

variable "environment-group" {}
variable "environment-instance-id" {}
variable "environment-canonical-id" {}
variable "environment-display-id" {}
variable "environment-name" {}
variable "environment-display-name" {}
variable "environment_type" {}
variable "environment-durability-type" {}
variable "environment-size" {}
