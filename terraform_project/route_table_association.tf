resource "aws_route_table_association" "tf_ps_pr" {
  subnet_id      = aws_subnet.tf_public_subnet.id
  route_table_id = aws_route_table.tf_public_route.id
}
