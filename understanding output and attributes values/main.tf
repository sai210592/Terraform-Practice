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

resource "aws_s3_bucket" "s3" {
  bucket = "sai-bucket-21-05-92"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



output "ec2_details" {
  value = aws_instance.instance1.arn
}

 output "Bucket_Details" {
  value = aws_s3_bucket.s3.*
}