resource "aws_s3_bucket" "s3bucket-tf-identifier" {
    bucket="sarvaawsbucket-via-tf"
  tags = {
    Name        = "sarvaawsbucket-via-tf"
    Environment = "Dev"
  }
}