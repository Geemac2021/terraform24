#HCL
provider "aws" {
  region     = "ca-central-1"
  
}

resource "aws_vpc" "vpc23" {
    cidr_block = "10.10.0.0/20"
    tags = {
        Name = "myvpc23"
        Environment = "dev"
  }
}

#ec2.tf
resource "aws_instance" "server1" {
     ami =  "ami-0801628222e2e96d6"
     instance_type = "t2.mirco"
     key_name      = "classkey24"
     tags = {
       Name  = "dbserver"
       Environment = "dev"
  }      
} 

resource "aws_s3_bucket" "mys3" {
  bucket = "class24"
  acl    = "private"

  tags = {
    Name        = "class24abc"
    Environment = "Dev"
  }
}
