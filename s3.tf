resource "ovh_cloud_storage_object_bucket" "bucket" {
  service_name = var.project_id
  region       = var.region
  name         = var.bucket_name
}
