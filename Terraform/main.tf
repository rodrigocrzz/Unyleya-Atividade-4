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
  region  = "us-east-1"

}

resource "aws_instance" "app_server" {
  ami           = "ami-017cdd6dc706848b2"
  instance_type = "t3a.medium"
  key_name = "aws-rodrigo"
  vpc_security_group_ids = ["sg-04ede381d79a12078"]
  
  tags = {
    Name = "Windows-Unyleya-Atividade4"
  }
}