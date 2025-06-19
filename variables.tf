variable "region" {
  description = "AWS region to deploy to"
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name"
  default     = "berke-demo-bucket"
}
