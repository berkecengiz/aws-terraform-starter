variable "region" {
  description = "AWS region to deploy to"
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name"
  default     = "berke-demo-bucket"
}

variable "force_destroy" {
  description = "Whether to force destroy the S3 bucket"
  type        = bool
  default     = true
}

variable "bucket_tags" {
  description = "Map of tags to apply to the S3 bucket"
  type        = map(string)
  default = {
    Name        = "Demo Bucket"
    Environment = "Dev"
  }
}

variable "enable_versioning" {
  description = "Enable versioning on the S3 bucket"
  type        = bool
  default     = true
}

variable "enable_sse" {
  description = "Enable server-side encryption on the S3 bucket"
  type        = bool
  default     = true
}
