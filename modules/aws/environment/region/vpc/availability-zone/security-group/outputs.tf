# ---------------------------------------------------------------------------
# Output Variables
# ---------------------------------------------------------------------------
output "aws-security-group-id" {
  value = "${module.env-security-group.aws-security-group-id}"
}