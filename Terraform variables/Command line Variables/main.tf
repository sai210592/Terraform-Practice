
# Configuration options
provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "ec2" {
  ami = "ami-08ebc9e780cde07dd"
  instance_type = var.instance_type
  subnet_id = "subnet-004e849cfd00284de"
  tags ={
    Name = "tf-example"
  }
}
variable "instance_type"{
  #description = "value"
  default = "t2.micro"
  type = string
}
