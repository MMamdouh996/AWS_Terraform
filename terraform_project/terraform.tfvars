vpc_cidr = "10.0.0.0/16"
route_income = ["0.0.0.0/0"]
route_outbounding = ["0.0.0.0/0"]
route_table_in = "0.0.0.0/0"
ec2_ami = "ami-06878d265978313ca"
ec2_type = "t2.micro"
key_pair = "lab4"

subnet_cidrs = ["10.0.1.0/28", "10.0.2.0/28"]

# variable "subnet_cidrs" {
#   type = list(string)
#   default = ["10.0.1.0/24", "10.0.2.0/24"]
# }


# variable "vpc-cidr" {
#     type = list
#     # type = string
#     description = "(optional) describe your variable"
#     default = [ "10.0.1.0/24" ,"10.0.2.0/24","10.0.3.0/24"]
# }
# vpc-cidr = [ "10.0.1.0/24" ,"10.0.2.0/24","10.0.3.0/24"]
# count = length(var.vpc-cidr)
