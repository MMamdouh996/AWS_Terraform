resource "aws_instance" "tf-nginx-instance" {
  ami           = "ami-06878d265978313ca" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.tf-public-instance-SG.id]
#   vpc_id = aws_vpc.tf_vpc.id
  subnet_id = aws_subnet.tf_public_subnet.id
  associate_public_ip_address = true

  tags = {
    Name = "tf_nginx_instance"
  }


#   network_interface {
#     network_interface_id = aws_network_interface.foo.id
#     device_index         = 0
#   }
    user_data = <<EOF
#!/bin/bash
sudo apt update
sudo apt install -y nginx
echo "Hello from Nginx Page , from User data inside Terraform " > /var/www/html/index.html
sudo systemctl restart nginx
    EOF

#   credit_specification {
#     cpu_credits = "unlimited"
#   }
}