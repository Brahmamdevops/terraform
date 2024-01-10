terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    # bucket = "mvaws-remote-state"
    # key    = "foreach"
    # region = "us-east-1"
    # dynamodb_table = "mvaws-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

