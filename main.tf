provider "aws" {
  region = "ap-southeast-1" # Or your preferred region
}

terraform {
  required_version = ">= 1.3.0"
  backend "local" {} # Use S3 backend in production
}
