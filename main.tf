provider "aws" {
  region = var.region
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "${var.bucket_prefix}-${random_id.suffix.hex}"
  acl    = "private"
  force_destroy = true

  tags = {
    Name        = "Demo Bucket"
    Environment = "Dev"
  }
}
