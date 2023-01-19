resource "aws_subnet" "tf_subnet" {
  vpc_id     = aws_vpc.tf_vpc.id
  cidr_block = var.subnet_cidrs[count.index]
  count = length(var.subnet_cidrs)

  tags = { 
    Name = "tf_subnet_${count.index}" 
  }
}
