resource "aws_internet_gateway" "tf_igw" {
  vpc_id = aws_vpc.tf_vpc.id

  tags = {
    Name = "tf_igw"
  }
}

resource "aws_eip" "tf_eip" {}

resource "aws_nat_gateway" "tf_nat" {

  allocation_id = aws_eip.tf_eip.id
  subnet_id = aws_subnet.tf_subnet[0].id
  depends_on = [aws_subnet.tf_subnet,aws_eip.tf_eip]

}

