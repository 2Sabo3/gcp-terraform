output "vpc_id" {
  description = "The ID of the VPC"
  value       = google_compute_network.vpc_network.id
}
output "subnetwork_id" {
  description = "The ID of the public subnet"
  value       = google_compute_subnetwork.vpc_subnetwork.id
  
}