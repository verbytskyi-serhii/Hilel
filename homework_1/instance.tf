provider "aws" {
  
  region  = "eu-west-1"
}

resource "aws_instance" "lesson1" {
  ami           = "ami-0aef57767f5404a3c"
  instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "lesson1-bucket"
    key    = "tfstate/terraform-vpc.tfstate"
    region = "eu-west-1"
    shared_credentials_file = "home/serhii/ .aws/credentials"
    dynamodb_table = "terraform-digitaleducation-vpc-univer"
  }
  required_providers {
    aws = {
      version = "~> 2.57"
    }
  }  
}