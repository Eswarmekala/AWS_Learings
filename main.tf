provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "day2" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    subnet_id = var.subnet_id
    associate_public_ip_address = var.associate_public_ip_address
    key_name = var.key_name_value
  
}