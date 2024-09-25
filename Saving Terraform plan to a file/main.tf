
# Configuration options
provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "instance1" {
  ami           = "ami-08ebc9e780cde07dd"
  instance_type = "t2.medium"
  subnet_id     = "subnet-004e849cfd00284de"
  key_name      = "SaiDevops"

  tags = {
    Name = "tf-SAI"
  }


}