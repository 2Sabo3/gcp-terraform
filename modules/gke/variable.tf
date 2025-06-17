variable "gke_cluster_name" {
  type        = string
  description = "Name of the GKE cluster"
}
variable "region" {
  type        = string
  description = "Region for the GKE cluster"    
  
}
variable "authorized_networks" {
    type        = list(string)
    description = "List of authorized networks for the GKE cluster"
}

variable "gke_service_account_email" {
  type        = string
  description = "Service account email for the GKE cluster"
}

variable "network" {
  type        = string
  description = "Network for the GKE cluster"
  
}

variable "subnet" {
  type        = string
  description = "Subnetwork for the GKE cluster"
}