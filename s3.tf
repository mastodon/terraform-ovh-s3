locals {
  object_lock_enabled = {
    mode           = var.object_lock_mode
    retention_days = var.object_lock_retention_days
  }
  object_lock_disabled = {
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

  object_lock = var.object_lock ? local.object_lock_enabled : local.object_lock_disabled

  tags = length(var.tags) > 0 ? var.tags : null
}
