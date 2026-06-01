resource "aws_s3_bucket" "example_bucket" {
  bucket = "swiggy-bucket-terraform-0099demo"
}

resource "aws_s3_bucket_versioning" "example_bucket_versioning" {
  bucket = aws_s3_bucket.example_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
