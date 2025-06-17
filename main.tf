provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
    source = "./modules/vpc"
    vpc_network_name        = var.vpc_network_name
    vpc_subnetwork_name     = var.vpc_subnetwork_name
    vpc_subnetwork_name_1   = var.vpc_subnetwork_name_1
    vpc_subnetwork_name_2   = var.vpc_subnetwork_name_2
    vpc_subnetwork_cidr     = var.vpc_subnetwork_cidr
    vpc_subnetwork_cidr_1   = var.vpc_subnetwork_cidr_1
    vpc_subnetwork_cidr_2   = var.vpc_subnetwork_cidr_2
    cloud_nat_name          = var.cloud_nat_name
    cloud_router_name       = var.cloud_router_name
    region = var.region

}

module "cloudsql" {
    source = "./modules/clouds-ql"
    cloudsql_instance_name = var.cloudsql_instance_name
    region = var.region
    cloudsql_root_password = var.cloudsql_root_password
    cpu = var.cpu
    memory = var.memory
    project_id = var.project_id
    authorized_networks_sql = var.authorized_networks_sql
    private_network = module.vpc.vpc_id
  
}

module "gke" {
    source = "./modules/gke"
    gke_cluster_name = var.gke_cluster_name
    authorized_networks = var.authorized_networks
    gke_service_account_email = var.gke_service_account_email
    region = var.region
    network = module.vpc.vpc_id
    subnet = module.vpc.subnetwork_id

}

module "cloudbucket" {
    source = "./modules/cloud-bucket"
    bucket_name = var.bucket_name
    bucket_location = var.bucket_location
    project_id = var.project_id
    storage_class = var.storage_class
}
