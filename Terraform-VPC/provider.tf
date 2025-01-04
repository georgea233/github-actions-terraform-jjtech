terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.0.0"
    }
  }
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "fluentindevops-tf-statefile"
    key    = "fluentindevops-tf-statefile/tf-github-actions/statefile"
    region = "us-east-2"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "fluentindevops-tf-state-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-2"
}



