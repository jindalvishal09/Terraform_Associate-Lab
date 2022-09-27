terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.32.0"
    }
  }
}

provider "aws" {
  profile    = "default"
  region = "ap-south-1"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
  alias   = "eu"
}