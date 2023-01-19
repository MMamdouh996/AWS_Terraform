resource "aws_route_table_association" "tf_public_rta" {
  subnet_id      = aws_subnet.tf_subnet[0].id
  route_table_id = aws_route_table.tf_public_route.id
}
resource "aws_route_table_association" "tf_private_rta" {
  subnet_id      = aws_subnet.tf_subnet[1].id
  route_table_id = aws_route_table.tf_nat_route.id
}
