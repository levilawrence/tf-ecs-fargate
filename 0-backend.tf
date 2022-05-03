terraform {
  backend "s3" {
    bucket = "general-state-lock"
    key    = "eks-fargate/terraform.state"
    region = "eu-west-2"
    dynamodb_table = "eks-fargate"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}
