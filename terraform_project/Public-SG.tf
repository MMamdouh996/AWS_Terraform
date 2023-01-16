resource "aws_security_group" "tf-public-instance-SG" {
  name        = "public-EC2"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.tf_vpc.id

  ingress {
    description      = "ssh connection from anywhere"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "HTTP connection from anywhere"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
   ingress {
    description      = "HTTPs connection from anywhere"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description      = "outbound to anywhere to anyprotocol"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    

  tags = {
    Name = "public-EC2-SG"
  }
}