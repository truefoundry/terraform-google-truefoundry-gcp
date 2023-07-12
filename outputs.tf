output "truefoundry_db_name" {
  value = module.postgresql-db.instance_name
}

output "truefoundry_db_endpoint" {
  value = module.postgresql-db.instance_connection_name
}

output "truefoundry_db_address" {
  value = module.postgresql-db.public_ip_address
}

output "truefoundry_db_database_name" {
  value = "default"
}

output "truefoundry_db_username" {
  value = "default"
}

output "truefoundry_db_password" {
  value     = module.postgresql-db.generated_user_password
  sensitive = true
}

output "truefoundry_db_port" {
  value = "5432"
}

output "truefoundry_bucket_id" {
  value = google_storage_bucket.truefoundry.name
}