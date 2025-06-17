resource "google_container_cluster" "gke-cluster" {
    name = var.gke_cluster_name
    location = var.region
    enable_autopilot = true
    network = var.network
    subnetwork = var.subnet
    
    deletion_protection = false

    release_channel {
      channel = "REGULAR"
    }

    master_authorized_networks_config {
      dynamic "cidr_blocks" {
        for_each = var.authorized_networks
        content {
          display_name = "Public Access"
          cidr_block   = cidr_blocks.value
        }
      }
    }
    private_cluster_config {
        enable_private_nodes    = true
        enable_private_endpoint = false
    }
}