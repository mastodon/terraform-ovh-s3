locals {
  object_lock = var.object.lock_status == "ENABLED" ? {
    status         = "ENABLED"
    mode           = var.object_lock_mode
    retention_days = var.object_lock_retention_days
    } : {
    status = "DISABLED"
  }
}

resource "ovh_cloud_storage_object_bucket" "bucket" {
  service_name = var.project_id
  region       = var.region
  name         = var.bucket_name

  versioning = {
    status = var.versioning
  }

  object_lock = var.object_lock ? local.object_lock : null

  tags = length(var.tags) > 0 ? var.tags : null
}
