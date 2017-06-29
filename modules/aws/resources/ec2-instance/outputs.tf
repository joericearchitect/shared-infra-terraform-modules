# ---------------------------------------------------------------------------
# Output Variables
# ---------------------------------------------------------------------------
output "aws-security-group-id" {
  value = "${aws_security_group.security-group.id}"
}