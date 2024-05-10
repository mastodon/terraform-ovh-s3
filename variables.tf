variable "project_id" {
  description = "The ID of the Public Cloud project the resources will be created in."
  type        = string
}

variable "region" {
  description = "Region in which to create the various resources."
  type        = string
  default     = "DE1"
}

variable "s3_endpoint" {
  type    = string
  default = "https://s3.gra.io.cloud.ovh.net"
}

variable "user_desc_prefix" {
  type    = string
  default = "[TF] User created by s3 terraform script"
}

variable "bucket_name" {
  type    = string
  default = "tf-s3-bucket-only"
}
