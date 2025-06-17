resource "google_storage_bucket" "google_bucket" {
  name = var.bucket_name
  location = var.bucket_location
  project = var.project_id

  storage_class = var.storage_class
  versioning {
    enabled = var.versioning_enabled
  }
}