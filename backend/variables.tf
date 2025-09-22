variable "bucket_name" {
  description = "Remote S3 Bucket Name"
  type        = string
  validation {
    condition     = can(regex("^([a-z0-9]{1}[a-z0-9-]{1,61}[a-z0-9]{1})$", var.bucket_name))
    error_message = "Bucket Name must not be empty and must follow S3 naming rules."
  }
}

variable "region" {
  type        = string
  description = "AWS region for the backend"
}

variable "lock_table_name" {
  type        = string
  description = "DynamoDB table name for state locking"
}