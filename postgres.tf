module "postgresql-db" {
  source               = "GoogleCloudPlatform/sql-db/google//modules/postgresql"
  version              = "12.0.0"
  name                 = "${var.unique_name}-db"
  random_instance_name = true
  database_version     = "POSTGRES_14"
  project_id           = var.project
  zone                 = var.truefoundry_db_zone
  region               = var.region
  tier                 = var.truefoundry_db_tier

  deletion_protection = false

  ip_configuration = {
    ipv4_enabled       = true
    private_network    = null
    require_ssl        = false
    allocated_ip_range = null
    authorized_networks = [
      {
        name  = "sample-gcp-health-checkers-range"
        value = "130.211.0.0/28"
        }, {
        name  = "everything"
        value = "0.0.0.0/0"
      }
    ]
  }
}