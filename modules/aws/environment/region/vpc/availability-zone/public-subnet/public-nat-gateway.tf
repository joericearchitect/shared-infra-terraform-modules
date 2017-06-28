# ---------------------------------------------------------------------------
# Public NAT Gateway
# ---------------------------------------------------------------------------
module "public-nat-gateway"  {
  source = "github.com/joericearchitect/shared-infra-terraform-modules//modules/aws/resources/nat-gateway"
  
  aws-subnet-id = "${module.public-subnet.aws-subnet-id}"
}