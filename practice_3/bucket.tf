resource "aws_s3_bucket" "providers" {
    count = 5
    bucket = "providers-${random_string.sufijo[count.index].id}"
    tags = {
      Name = "providers-${random_string.sufijo[count.index].id}"
      Environment = "dev"
    }
}

resource "random_string" "sufijo" {
    count = 5
    length = 8
    special = false
    upper = false
    numeric = false
}
