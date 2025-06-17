resource "google_compute_router" "cloud_router" {
  name = var.cloud_router_name
  network = google_compute_network.vpc_network.id
  region = var.region
}

resource "google_compute_router_nat" "cloud_nat" {
    name = var.cloud_nat_name
    router = google_compute_router.cloud_router.name
    region = var.region
    nat_ip_allocate_option = "AUTO_ONLY"
    source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
    subnetwork {
        name = google_compute_subnetwork.vpc_subnetwork_1.id
        source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
    }
    subnetwork {
        name = google_compute_subnetwork.vpc_subnetwork_2.id
        source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
    }
  
}