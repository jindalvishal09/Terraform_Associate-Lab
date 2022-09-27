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

variable "instance_type"{
    type = string


}

resource "aws_instance" "my_server" {
  ami           = "ami-01216e7612243e0ef"
  instance_type = var.instance_type

  tags = {
    Name = "MyServer-${local.project_name}"
  }
}

locals {
  project_name = "Vishal"
}

output "public_ip" {
  value = aws_instance.my_server.public_ip
}