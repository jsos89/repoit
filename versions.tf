terraform {
  required_version = ">= 1.3.0"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "entrenamientoit"
    workspaces {
      name = "repoit"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  allowed_account_ids = ["590183942930"]
}
