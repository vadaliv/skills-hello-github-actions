variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply to the bucket. Defaults to 'private'."
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "A boolean flag to enable/disable versioning. Defaults to true."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}
