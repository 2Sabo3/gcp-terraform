variable "project_id" {
  description = "The ID of the project in which the resources will be created."
  type        = string
}

variable "region" {
  description = "The region where the resources will be created."
  type        = string
}

variable "vpc_network_name" {
  description = "Name of the VPC network."
  type        = string  
}
variable "vpc_subnetwork_name" {
  description = "Name of the public subnet."
  type        = string
}
variable "vpc_subnetwork_name_1" {
  description = "Name of the private backend subnet."
  type        = string
}
variable "vpc_subnetwork_name_2" {
  description = "Name of the private database subnet."
  type        = string
}
variable "vpc_subnetwork_cidr" {
  description = "CIDR range for the public subnet."
  type        = string
}
variable "vpc_subnetwork_cidr_1" {
  description = "CIDR range for the private backend subnet."
  type        = string
}
variable "vpc_subnetwork_cidr_2" {
  description = "CIDR range for the private database subnet."
  type        = string
}
variable "cloud_nat_name" {
  description = "Name of the Cloud NAT."
  type        = string
}
variable "cloud_router_name" {
  description = "Name of the Cloud Router."
  type        = string
}
variable "cloudsql_instance_name" {
  description = "Name of the Cloud SQL instance."
  type        = string
}
variable "cloudsql_root_password" {
  description = "Root password for the Cloud SQL instance."
  type        = string
  sensitive   = true
}
variable "cpu" {
  description = "Number of CPUs for the Cloud SQL instance."
  type        = number
}
variable "memory" {
  description = "Memory size for the Cloud SQL instance in GB."
  type        = number
}
variable "authorized_networks_sql" {
  description = "List of authorized networks for Cloud SQL."
  type        = string
}
variable "gke_cluster_name" {
  description = "Name of the GKE cluster."
  type        = string
}
variable "gke_service_account_email" {
  description = "Service account email for GKE."
  type        = string
}

variable "authorized_networks" {
  description = "Authorized networks for GKE"
  type        = list(string)
}
variable "bucket_name" {
  description = "Name of the Cloud Storage bucket."
  type        = string
}
variable "bucket_location" {
  description = "Location for the Cloud Storage bucket."
  type        = string
}
variable "storage_class" {
  description = "Storage class for the Cloud Storage bucket."
  type        = string
}