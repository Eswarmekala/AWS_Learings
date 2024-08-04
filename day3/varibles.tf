variable "cidr_blockvar" {
    description = "we pass vpc cidr"
  
}

variable "dnsname" {
    description = "to enable pulic dns for vpc"
    type = bool
  
}

variable "publicsubnetcidrvar" {
    description = "we are passing public cidr"
  
}

variable "privitesubnetcidrvar" {
    description = "we are passing privite cidr"
  
}

variable "igwroute" {
  description = "allowing internet route to igw"
}