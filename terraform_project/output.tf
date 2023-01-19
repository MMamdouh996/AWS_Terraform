output "public-instance" {
 value = aws_instance.tf-nginx-instance.public_ip  
}
output "private-instance" {
 value = aws_instance.tf-private-instance.private_ip  
}