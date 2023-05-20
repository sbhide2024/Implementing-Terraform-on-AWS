# Terraform Settings Block
#terraform {
 # required_providers {
  #  aws = {
   #   source  = "hashicorp/aws"
    # version = "~> 3.21" # Optional but recommended in production
    #}
  #}
#}

## Provider Block
#provider "aws" {
 # profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
 # region  = "us-east-1"
# }


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

