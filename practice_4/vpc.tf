resource "aws_vpc" "vpc_virginia" {
    cidr_block = "10.10.0.0/16"
    tags = {
      Name = "vpc_virginia"
      name = "prueba"
      env = "dev"
    }
    provider = aws.aws_virginia
}

resource "aws_vpc" "vpc_ohio" {
    cidr_block = "10.10.0.0/16"
    tags = {
      Name = "vpc_ohio"
      name = "prueba"
      env = "dev"
    }
    provider = aws.aws_ohio
}