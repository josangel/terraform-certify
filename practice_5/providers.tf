terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = ">=5.64.0"
        }
    }
    required_version = "1.9.5"
}

provider "aws" {
    region = "us-east-1"
    alias = "aws_virginia"
}

provider "aws" {
    region = "us-east-2"
    alias = "aws_ohio"
}