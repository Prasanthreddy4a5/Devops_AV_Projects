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
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}


  

resource "aws_instance" "devops-practice" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  region  = "us-east-1"

  tags = {
    Name = "devops-practice"
  }
}
