resource "google_sql_database_instance" "cloudsql" {
    name = var.cloudsql_instance_name
    region = var.region
    database_version = "POSTGRES_17"
    root_password = var.cloudsql_root_password
    deletion_protection = true
    project = var.project_id
    settings {
      tier = "db-custom-${var.cpu}-${var.memory}"
      availability_type = "ZONAL"
      disk_size = 50
      activation_policy = "ALWAYS"
      ip_configuration {
            ipv4_enabled = true
            private_network = var.private_network
            authorized_networks {
                name = "Public Access"
                value = var.authorized_networks_sql
            }
        }
    }
  
}