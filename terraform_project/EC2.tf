resource "aws_instance" "tf-nginx-instance" {
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  vpc_security_group_ids = [aws_security_group.tf-public-instance-SG.id]
  subnet_id = aws_subnet.tf_subnet[0].id
  associate_public_ip_address = true
  key_name      = var.key_pair

  depends_on = [ local_file.tf-nginx-p-ud]
# lifecycle {
#   # create_before_destroy = true

#   # prevent_destroy = true
# }
  tags = {
    Name = "tf_nginx_instance"
  }
#   network_interface {
#     network_interface_id = aws_network_interface.foo.id #Explain !!!!
#     device_index         = 0
#   }

  # user_data = local_file.tf-nginx-p-ud

user_data = <<EOF
#!/bin/bash
sudo apt update
sudo apt install -y nginx
echo "Hello from Nginx Page , from User data inside Terraform with $(hostname -f) " > /var/www/html/index.html
sudo systemctl restart nginx
    EOF

#   credit_specification {
#     cpu_credits = "unlimited"
#   }
}

resource "aws_instance" "tf-private-instance" {
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  vpc_security_group_ids = [aws_security_group.tf-public-instance-SG.id]
  subnet_id = aws_subnet.tf_subnet[1].id
  key_name      = var.key_pair


  depends_on = [local_file.tf-nginx-p-ud]
# lifecycle {
#   # create_before_destroy = true

#   # prevent_destroy = true
# }
  tags = {
    Name = "tf_private_instance"
  }
#   network_interface {
#     network_interface_id = aws_network_interface.foo.id #Explain !!!!
#     device_index         = 0
#   }

  # user_data = local_file.tf-nginx-p-ud

user_data = <<EOF
#!/bin/bash
sudo apt update
sudo apt install -y nginx
echo "Hello from Nginx Page , from User data inside Terraform with $(hostname -f) " > /var/www/html/index.html
sudo systemctl restart nginx
    EOF

#   credit_specification {
#     cpu_credits = "unlimited"
#   }
}


# resource "tls_private_key" "tf_PK" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "generated_key" {
#   key_name   = var.key_name
#   public_key = tls_private_key.tf_PK.public_key_openssh
# }

# resource "local_file" "name" {
#   content = tls_private_key.tf_PK.private_key_pem
#   filename = "lab4"
# }