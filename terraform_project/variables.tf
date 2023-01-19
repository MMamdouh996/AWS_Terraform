variable "vpc_cidr" {
  type = string
  
}
variable "key_pair" {
  type = string
  
}
variable "route_income" {
  type = list(string)
}
variable "route_table_in" {
  type = string
}
variable "route_outbounding" {
  type = list(string)
  
}
variable "ec2_ami" {
  type = string
  
}
variable "ec2_type" {
  type = string
  
}

variable "subnet_cidrs" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
