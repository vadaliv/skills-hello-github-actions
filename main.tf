provider "aws" {
  region = "us-east-1" # Example region, can be configured as needed
}

module "s3_bucket_example" {
  source      = "./terraform-s3-module"
  bucket_name = "my-unique-example-bucket-jules" # Replace with a unique bucket name

  tags = {
    Terraform   = "true"
    Environment = "example"
    CreatedBy   = "JulesAI"
  }
}

output "example_bucket_id" {
  description = "The ID of the example S3 bucket."
  value       = module.s3_bucket_example.bucket_id
}

output "example_bucket_arn" {
  description = "The ARN of the example S3 bucket."
  value       = module.s3_bucket_example.bucket_arn
}
