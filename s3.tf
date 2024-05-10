# Admin user for S3

resource "ovh_cloud_project_user" "admin_user" {
  service_name = var.project_id
  description  = "${var.user_desc_prefix} that is used to create S3 access key"
  role_name    = "objectstore_operator"
}

resource "ovh_cloud_project_user_s3_credential" "admin_cred" {
  service_name = var.project_id
  user_id      = ovh_cloud_project_user.admin_user.id
}

# Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "${var.project_id}-${var.bucket_name}"
}
