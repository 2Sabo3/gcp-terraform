resource "google_compute_subnetwork" "vpc_subnetwork" {
  name          = var.vpc_subnetwork_name
  region        = var.region
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = var.vpc_subnetwork_cidr
  description   = "Public Subnet"
}

resource "google_compute_subnetwork" "vpc_subnetwork_1" {
  name          = var.vpc_subnetwork_name_1
  region        = var.region
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = var.vpc_subnetwork_cidr_1
  description   = "Private Backend Subnet"
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "vpc_subnetwork_2" {
  name          = var.vpc_subnetwork_name_2
  region        = var.region
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = var.vpc_subnetwork_cidr_2
  description   = "Private Database Subnet"
  private_ip_google_access = true

}