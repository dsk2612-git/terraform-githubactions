provider "aws" {
  
}

resource "aws_instance" "dev" {
    ami = "ami-0b83c7f5e2823d1f4"
    instance_type = "t3.micro"
    key_name = "intern"
    # availability_zone = "ap-south-1a"
    tags = {
      Name = "dev"
    }
}
resource "aws_s3_bucket" "dsk" {
  bucket = "dsk-123465878fhdfgf"
}
