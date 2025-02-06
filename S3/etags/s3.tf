resource "aws_s3_bucket" "s3bucket-tf-identifier-etag" {
}



resource "aws_s3_object" "object" {
  bucket = "sarvaawsbucket-via-tf-etag"
  key    = "etag_example.txt"
  source = "myfile.txt"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("myfile.txt"))}"
  etag = filemd5("myfile.txt")
}