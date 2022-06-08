
terraform {
  backend "remote" {
    organization = "app.terraform.io"

    workspaces {
      name = "AK_Automated"
    }
  }
}


provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2" {
  ami           = "ami-079b5e5b3971bd10d "
  instance_type = "t2.micro"
  subnet_id     = "subnet id -09057160738ffdd97"
  tags = {
    Name = "Hello"
  }
}














# # resource "aws_config_aggregate_authorization" "ak" {
# #   account_id = "860595709477"
# #   region     = "ap-south-1"
  
# # terraform {
# #   required_providers {
# #     aws = {
# #       version = ">= 2.7.0"
# #       source = "hashicorp/aws"
# #     }
# #   }
# # }

# terraform {
#   required_version = "> 0.7.0"
# }

# terraform {
#   backend "s3" {
#     bucket = "aws_s3_bucket.b.name"
#     key    = "tfstate"
#     region  = "ap-south-1"
#   }
# }


# # Configure the AWS Provider
# provider "aws" {
#   region     = "ap-south-1"
#   access_key = "AKIA4QX4AMYSRMUDQCHC"
#   secret_key = "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"
# }
# resource "aws_instance" "ec2" {
#   ami           = "ami-079b5e5b3971bd10d "
#   instance_type = "t2.micro"
#   subnet_id     = "subnet id -09057160738ffdd97"
#   tags = {
#     Name = "Hello"
#   }
# }
# resource "aws_s3_bucket" "b" {
#   bucket = "my-tf-test-bucket"
# }
