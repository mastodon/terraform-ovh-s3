# Admin user
resource "ovh_cloud_project_user" "admin_user" {
  service_name = var.project_id
  description  = "[terraform] Admin user for S3 bucket - ${var.bucket_name}"
  role_name    = "objectstore_operator"
}

resource "ovh_cloud_project_user_s3_credential" "admin_cred" {
  service_name = var.project_id
  user_id      = ovh_cloud_project_user.admin_user.id
}

# Read/write user
resource "ovh_cloud_project_user" "write_user" {
  service_name = var.project_id
  description  = "[terraform] Read/write user for S3 bucket - ${var.bucket_name}"
  role_name    = "objectstore_operator"
}

resource "ovh_cloud_project_user_s3_credential" "write_cred" {
  service_name = var.project_id
  user_id      = ovh_cloud_project_user.write_user.id
}

# Read-only user
resource "ovh_cloud_project_user" "read_user" {
  service_name = var.project_id
  description  = "[terraform] Read user for S3 bucket - ${var.bucket_name}"
  role_name    = "objectstore_operator"
}

resource "ovh_cloud_project_user_s3_credential" "read_cred" {
  service_name = var.project_id
  user_id      = ovh_cloud_project_user.read_user.id
}
