terraform {
  required_version = "~> 0.12"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "AK_Automated"
    workspaces { prefix = "vpc-" }
  }
}

provider "aws" {
  region = "ap-south-1"
}


module "vpc" {
  source = "github.com/nitheesh86/terraform-modules/modules/vpc"

  name = sahoo
  cidr = "10.0.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = practice
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
