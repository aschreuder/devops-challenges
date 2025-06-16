# Create the S3 bucket
resource "aws_s3_bucket" "tf-test-bucket-arnaudschreuder" {
  bucket = "tf-test-bucket-arnaudschreuder"
}

# Allow bucket versioning
resource "aws_s3_bucket_versioning" "tf-test-bucket-versioning-arnaudschreuder" {
  bucket = "tf-test-bucket-arnaudschreuder"
  versioning_configuration {
    status = "Enabled"
  }
}

# Create the "uploads" folder upon bucket creation
resource "aws_s3_object" "tf_test_bucket_folder" {
  bucket = aws_s3_bucket.tf-test-bucket-arnaudschreuder.id
  key = "uploads/"
  content = ""
}
