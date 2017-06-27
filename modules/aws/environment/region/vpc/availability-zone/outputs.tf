# ---------------------------------------------------------------------------
# Output Variables
# ---------------------------------------------------------------------------
output "private-subnet-id" {
  value = "${module.env-private-subnet.aws-subnet-id}"
}