# ---------------------------------------------------------------------------
# Output Variables
# ---------------------------------------------------------------------------
output "aws-security-group-id" {
  value = "${module.env-security-group.aws-security-group-id}"
}
output "aws-ec2-instance-id" {
  value = "${module.env-security-group.aws-security-group-id}"
}