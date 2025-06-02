# Terraform S3 Bucket Module

This module creates an S3 bucket with basic configurations.

## Usage

```hcl
module "s3_bucket" {
  source      = "./terraform-s3-module"  # Or path to module in your infrastructure
  bucket_name = "my-unique-bucket-name"
  acl         = "private"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
```

## Inputs

| Name                 | Description                                               | Type        | Default   | Required |
| -------------------- | --------------------------------------------------------- | ----------- | --------- | :------: |
| `bucket_name`        | The name of the S3 bucket. Must be globally unique.       | `string`    |           |   yes    |
| `acl`                | The canned ACL to apply to the bucket.                    | `string`    | `private` |    no    |
| `versioning_enabled` | A boolean flag to enable/disable versioning.              | `bool`      | `true`    |    no    |
| `tags`               | A map of tags to assign to the bucket.                    | `map(string)` | `{}`      |    no    |

## Outputs

| Name                          | Description                               |
| ----------------------------- | ----------------------------------------- |
| `bucket_id`                   | The ID of the S3 bucket.                  |
| `bucket_arn`                  | The ARN of the S3 bucket.                 |
| `bucket_domain_name`          | The domain name of the S3 bucket.         |
| `bucket_regional_domain_name` | The regional domain name of the S3 bucket. |
