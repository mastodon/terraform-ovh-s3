output "access_key" {
  description = "Access key for the S3 admin user."
  value       = ovh_cloud_project_user_s3_credential.s3_admin_cred.access_key_id
}

output "secret_key" {
  description = "Secret key for the S3 admin user."
  value       = ovh_cloud_project_user_s3_credential.s3_admin_cred.secret_access_key
  sensitive   = true
}
