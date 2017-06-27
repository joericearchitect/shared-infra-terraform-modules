# ---------------------------------------------------------------------------
# Output Variables
# ---------------------------------------------------------------------------
output "jra-environment-instance-id" {
  value = "${random_id.env-instance.b64}"
}
output "region-1-aws-vpc-id" {
  value = "${module.region-1.aws-vpc-id}"
}