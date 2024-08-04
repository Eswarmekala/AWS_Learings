provider "aws" {
    region = "us-east-1"
  
}

resource "aws_vpc" "vpc_test" {
    cidr_block = var.cidr_blockvar
    enable_dns_hostnames = var.dnsname
    tags = {
        Name = "test_vpc"
    }
    
    
}

resource "aws_subnet" "publicsubnet" {
    vpc_id = aws_vpc.vpc_test.id
    cidr_block = var.publicsubnetcidrvar
    
  
}

resource "aws_subnet" "privitesubnet" {
    vpc_id = aws_vpc.vpc_test.id
    cidr_block = var.privitesubnetcidrvar
    
  
}

resource "aws_internet_gateway" "public_gw" {
    vpc_id = aws_vpc.vpc_test.id
        
}

resource "aws_route_table" "publicroute" {
    vpc_id = aws_vpc.vpc_test.id
    route {
        cidr_block = var.igwroute
        gateway_id = aws_internet_gateway.public_gw.id
    }

    tags = {
      Name = "public-rt"
    }
    
  
}

resource "aws_route_table_association" "publicsubnet" {
    subnet_id = aws_subnet.publicsubnet.id
    route_table_id = aws_route_table.publicroute.id
  
}

