# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.30.0"
    }
  
  }
}

# Provider Block
provider "aws" {
  
  region = "us-east-1"




}
# Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "tf-stack"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  
  }

