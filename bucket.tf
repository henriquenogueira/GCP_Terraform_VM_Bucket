#### Bucket para states terraform ####
resource "google_storage_bucket" "bucket_terraform" {
  name                        = var.bucket_name
  location                    = var.region
  force_destroy               = var.true
  project                     = var.gcp_project
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}