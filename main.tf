provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "example" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  subnet_id = "subnet-0062f2626c2fec5d4"
  key_name = "Test_machine"
  associate_public_ip_address = "true"


}