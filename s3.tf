resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_prefix}-${var.bucket_name}"

  tags = var.tags
}
