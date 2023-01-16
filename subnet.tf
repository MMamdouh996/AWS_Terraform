resource "aws_subnet" "tf_public_subnet" {
  vpc_id     = aws_vpc.tf_vpc.id
  cidr_block = "10.0.1.0/28"

    
  tags = { 
    Name = "tf_public_subnet" 
  }

}
