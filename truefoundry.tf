resource "google_storage_bucket" "truefoundry" {
  name                        = local.truefoundry_unique_name
  project                     = var.project
  location                    = var.region
  storage_class               = null
  uniform_bucket_level_access = null
  labels                      = null
  force_destroy               = true

  versioning {
    enabled = false
  }

}