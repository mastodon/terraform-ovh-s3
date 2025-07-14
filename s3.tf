resource "ovh_cloud_project_storage" "storage" {
  service_name = var.project_id
  region_name  = var.region
  name         = var.bucket_name
}
