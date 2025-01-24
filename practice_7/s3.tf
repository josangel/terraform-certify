resource "aws_s3_bucket" "ptoject-bucket" {
    bucket = local.s3-sufix
}