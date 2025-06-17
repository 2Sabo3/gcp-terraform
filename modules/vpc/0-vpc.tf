resource "google_compute_network" "vpc_network" {
  name = var.vpc_network_name
  description = "VPC network for the project"
  auto_create_subnetworks = false

}
