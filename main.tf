
# Configuration options
provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "instance1" {
  ami           = "ami-022ce6f32988af5fa"
  instance_type = "t2.micro"
  subnet_id = "subnet-004e849cfd00284de"
  key_name = "SaiDevops"
  
   tags = {
    Name = "tf-SAI"
  }


}