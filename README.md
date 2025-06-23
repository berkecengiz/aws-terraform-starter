# AWS Terraform Starter

This repository contains a minimal Terraform configuration for provisioning a single S3 bucket on AWS.  It aims to provide a quick starting point for testing out Terraform against an AWS account.

## 🛠️ What It Does

- Creates a private S3 bucket
- Uses a random suffix to ensure uniqueness
- Outputs the created bucket name

## 🚀 Getting Started

```bash
terraform init
terraform plan
terraform apply
```

## 🧩 Current Setup

This project uses a very small set of Terraform files:

- **`main.tf`** – declares the AWS provider, a `random_id` resource to create a
  unique suffix, and an `aws_s3_bucket` resource that provisions a private
  bucket.
- **`variables.tf`** – defines two input variables: the AWS `region` and the
  `bucket_prefix` used when naming the bucket. Default values are provided so the
  example works out of the box.
- **`outputs.tf`** – outputs the final bucket name after creation.


## 🏗️ CI Pipeline

Continuous integration is handled by a GitHub Actions workflow located at
`.github/workflows/terraform.yml`. The pipeline automatically runs
`terraform fmt -check -recursive` and `terraform validate` on every push to
ensure the configuration stays formatted and passes validation.

## ⚠️ Cost Management

This demo only provisions an S3 bucket (minimal cost), but always check your AWS billing dashboard after testing.

## 🔄 Clean Up

```bash
terraform destroy
```
