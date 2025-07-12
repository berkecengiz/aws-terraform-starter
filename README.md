# AWS Terraform Starter

This repository contains a minimal Terraform configuration for provisioning a single S3 bucket on AWS. It aims to provide a quick starting point for testing out Terraform against an AWS account.

---

## 🚦 Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [AWS CLI](https://aws.amazon.com/cli/) (optional, for managing credentials)
- An AWS account with appropriate permissions
- AWS credentials configured (via environment variables, `~/.aws/credentials`, or similar)

---

## 🛠️ What It Does

- Creates a private S3 bucket
- Uses a random suffix to ensure uniqueness
- Outputs the created bucket name

---

## 🚀 Getting Started

```bash
git clone https://github.com/yourusername/aws-terraform-starter.git
cd aws-terraform-starter
terraform init
terraform plan
terraform apply
```

---

## 🧩 Current Setup

- **[`main.tf`](main.tf)** – Declares the AWS provider, a `random_id` resource to create a unique suffix, and an `aws_s3_bucket` resource that provisions a private bucket.
- **[`variables.tf`](variables.tf)** – Defines two input variables: the AWS `region` and the `bucket_prefix` used when naming the bucket. Default values are provided so the example works out of the box.
- **[`outputs.tf`](outputs.tf)** – Outputs the final bucket name after creation.

---

## 📦 Usage Example

After running `terraform apply`, you’ll see output similar to:

```
Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

bucket_name = "berke-demo-bucket-1a2b3c4d"
```

---

## 🏗️ CI Pipeline

Continuous integration is handled by a GitHub Actions workflow located at
[`.github/workflows/terraform.yml`](.github/workflows/terraform.yml). The pipeline automatically runs
`terraform fmt -check -recursive` and `terraform validate` on every push to ensure the configuration stays formatted and passes validation.

---


## 🔄 Clean Up

```bash
terraform destroy
```

---

## 📚 References

- [Terraform AWS Provider Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Terraform S3 Bucket Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
- [AWS S3 Documentation](https://docs.aws.amazon.com/s3/index.html)

