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
  ami                    = "ami-04b70fa74e45c3917"
  instance_type          = "t2.medium"
  availability_zone = "us-east-1e"
  tags = {
    Name  = "my-ec2-instance"
    appid = "terraform"
    env   = "dev"
  }

}




