resource "aws_s3_bucket" "b" {
  bucket = "${var.project_id}-${var.bucket_name}"
}
