
resource "aws_route_table" "tf_public_route" {
  vpc_id = aws_vpc.tf_vpc.id

  route {
    cidr_block = "10.0.0.0/24"
    gateway_id = aws_internet_gateway.tf_gw.id
  }


  tags = {
    Name = "tf_public_route"
  }
}