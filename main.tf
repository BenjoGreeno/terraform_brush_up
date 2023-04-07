terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "blah_1" {
  ami = "ami-00aa9d3df94c6c354"
  instance_type = "t2.micro"
  tags = {
    Name = blah_1
  }
}