variable "project_id" {
  description = "The ID of the Public Cloud project the resources will be created in."
  type        = string
}

variable "region" {
  description = "Region in which to create the various resources."
  type        = string
  default     = "de"
}

variable "type" {
  description = "Type of S3 bucket to create (standard, high_performance, swift)."
  type        = string
  default     = "standard"

  validation {
    condition     = contains(["standard", "high_performance", "swift"], var.type)
    error_message = "Valid values for type are (standard, high_performance, swift)"
  }
}

variable "bucket_name" {
  description = "Name of the bucket."
  type        = string
  default     = "tf-s3-bucket-only"

  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]$", var.bucket_name))
    error_message = "Invalid bucket name. Expecting '^[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]$'"
  }
}

variable "bucket_prefix" {
  description = "Prefix to append to tbe bucket name (inserted as {prefix}-{name})."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Key/value pairs to add to the bucket."
  type        = map(string)
  default     = {}
}
