terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "82s-snremote-state"
    key    = "expense-dev-bastion" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "82s-state-locking"

  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}