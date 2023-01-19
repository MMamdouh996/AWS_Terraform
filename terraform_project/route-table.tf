
resource "aws_route_table" "tf_public_route" {
  vpc_id = aws_vpc.tf_vpc.id

  route {
    cidr_block = var.route_table_in
    gateway_id = aws_internet_gateway.tf_igw.id
  }

  tags = {
    Name = "tf_public_route"
  }
}


resource "aws_route_table" "tf_nat_route" {
  vpc_id = aws_vpc.tf_vpc.id

  route {
    cidr_block = var.route_table_in
    gateway_id = aws_nat_gateway.tf_nat.id
  }

  tags = {
    Name = "tf_public_route"
  }
}