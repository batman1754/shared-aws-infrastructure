terraform {
  backend "s3" {}
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  default_tags {
    tags = {
      Automation = true
      Team       = "DevOps"
      User       = "Managed by Terraform"
    }
  }
}
