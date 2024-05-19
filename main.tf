provider "aws" {
  region = "us-east-1"
}

#create vpc

resource "aws_vpc" "terraform_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "MY_VPC"
  }
}

resource "aws_instance" "terraform-instance-1" {
  ami                    = "ami-0c4596ce1e7ae3e68"
  instance_type          = "t2.micro"
  key_name               = "us-east-1e"
  tags = {
    Name  = "my-ec2-instance"
    appid = "terraform"
    env   = "dev"
  }
  availability_zone = "us-east-1e"
}

 resource "aws_instance" "demo-tf-instance" {
   ami = "ami-0bb84b8ffd87024d8"
   instance_type = "t2.medium"
   key_name = "jenkins"
   tags = {
     Name = "my-ec2-instance-1"
 	appid = "345"
 	env = "dev"
   }
   availability_zone = "us-east-1e"
 }


