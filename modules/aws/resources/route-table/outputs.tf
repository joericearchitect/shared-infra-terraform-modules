# ---------------------------------------------------------------------------
# Output Variables
# ---------------------------------------------------------------------------
output "aws-route-table-id" {
  value = "${aws_route_table.route-table.id}"
}