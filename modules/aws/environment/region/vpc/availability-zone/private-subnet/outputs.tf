# ---------------------------------------------------------------------------
# Output Variables
# ---------------------------------------------------------------------------
output "aws-subnet-id" {
  value = "${module.private-subnet.aws-subnet-id}"
}