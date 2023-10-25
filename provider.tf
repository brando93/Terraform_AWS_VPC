# configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "awsadm"
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "awsadm-terraform"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    profile        = "awsadm"
    dynamodb_table = "terraform-state-lock-dynamodb"
  }
}