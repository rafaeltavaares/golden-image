terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Specifies the allowed version range
    }
  }
  required_version = ">= 1.5.0" # Specifies the minimum Terraform CLI version
}

# 2. The Provider Configuration Block
provider "aws" {
  region = "us-east-1" # Your target deployment region
}
module "vpc" {
    source = "../../modulos/vpc"
    environment = "dev"
}