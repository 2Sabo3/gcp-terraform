variable "cloudsql_instance_name" {
  type        = string
  description = "Name of the Cloud SQL instance"
}
variable "region" {
  type        = string
  description = "Region for the Cloud SQL instance" 
}
variable "cloudsql_root_password" {
  type        = string
  description = "Root password for the Cloud SQL instance"
  sensitive   = true
}
variable "cpu" {
  type        = number
  description = "Number of CPUs for the Cloud SQL instance"
}
variable "memory" {
  type        = number
  description = "Memory size in GB for the Cloud SQL instance"
}
variable "project_id" {
  type        = string
  description = "ID of the project where the Cloud SQL instance will be created"
}
variable "authorized_networks_sql" {
  type        = string
  description = "Authorized networks for the Cloud SQL instance"
}
variable "private_network" {
  type        = string
  description = "Private network for the Cloud SQL instance"
}
