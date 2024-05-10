output "admin_access_key" {
  description = "Access key for the S3 admin user."
  value       = ovh_cloud_project_user_s3_credential.admin_cred.access_key_id
}

output "admin_secret_key" {
  description = "Secret key for the S3 admin user."
  value       = ovh_cloud_project_user_s3_credential.admin_cred.secret_access_key
  sensitive   = true
}

output "write_access_key" {
  description = "Access key for the S3 read/write user."
  value       = ovh_cloud_project_user_s3_credential.write_cred.access_key_id
}

output "write_secret_key" {
  description = "Secret key for the S3 read/write user."
  value       = ovh_cloud_project_user_s3_credential.write_cred.secret_access_key
  sensitive   = true
}

output "read_access_key" {
  description = "Access key for the S3 read-only user."
  value       = ovh_cloud_project_user_s3_credential.read_cred.access_key_id
}

output "read_secret_key" {
  description = "Secret key for the S3 read-only user."
  value       = ovh_cloud_project_user_s3_credential.read_cred.secret_access_key
  sensitive   = true
}
