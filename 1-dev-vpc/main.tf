##################################################################################
# PROVIDERS #
##################################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}



provider "aws" {
  region  =  "us-east-1"
 # profile = "default"
}

#provider "aws" {
#  access_key = "ACCESS_KEY"
#  secret_key = "SECRET_KEY"
 # AWS_ACCESS_KEY_ID="${var.AWS_ACCESS_KEY_ID}"
  # AWS_SECRET_ACCESS_KEY="${var.AWS_SECRET_ACCESS_KEY}"
#  access_key = var.AWS_ACCESS_KEY_ID
#  secret_key = var.AWS_SECRET_ACCESS_KEY
#  access_key      = "${var.access_key}"
 # secret_key      = "${var.secret_key}"
 # region     = "us-east-1a"
# }

##################################################################################
# DATA
##################################################################################



##################################################################################
# RESOURCES
##################################################################################

# NETWORKING #
resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

}


