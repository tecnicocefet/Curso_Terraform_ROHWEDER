terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = ">= 4"
  }

  backend "s3" {
    bucket = "terraform-curso-rohweder"
    key    = "terraform tfstate "
    region = "us-east-1"
  }
}



provider "aws" {
  profile                  = "default"
  shared_credentials_files = ["~/.aws/credentials"]
  region                   = var.region

}



resource "aws_instance" "web" {
  ami                     = var.amis[var.region]
  count = 3
  instance_type           = var.instance_type
  disable_api_termination = var.disable_api_termination
  user_data               = file("./files/userdata.sh")

  tags = {
    Name = var.init_names[count.index]
  }

}
