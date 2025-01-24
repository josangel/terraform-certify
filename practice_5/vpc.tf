resource "aws_vpc" "vpc_virginia" {
    cidr_block = var.cidr_block
    tags = {
      Name = "vpc_virginia"
      name = var.name
      env = var.env
    }
    provider = aws.aws_virginia
}

resource "aws_vpc" "vpc_ohio" {
    cidr_block = var.cidr_block
    tags = {
      Name = "vpc_ohio"
      name = var.name
      env = var.env
    }
    provider = aws.aws_ohio
}