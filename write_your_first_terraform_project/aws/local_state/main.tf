terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-1"
}

resource "aws_instance" "devops-practice" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo_Practice"
  }
}
#