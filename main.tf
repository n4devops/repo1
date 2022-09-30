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
  profile = "default"
  region = "us-east-1"
}
