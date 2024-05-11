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
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  subnet_id = "subnet-0cfb1b166a25b6abf"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
