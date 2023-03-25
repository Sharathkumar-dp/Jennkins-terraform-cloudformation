terraform {
  required_version = ">=0.12.24"
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_cloudformation_stack" "bucket" {
  name = "s3-bucket-creation"

  template_body = file("templates/bucket.yml")
}
