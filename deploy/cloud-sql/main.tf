provider "google" {
  project = var.project-name
}

module "sql-db_mysql" {
  source  = "GoogleCloudPlatform/sql-db/google//modules/mysql"
  version = "8.0.0"
  # insert the 5 required variables here
  name = "demo-db"
  project_id = var.project-name
  database_version = "MySQL_8_0"
  zone = "${var.region-name}-a"
}