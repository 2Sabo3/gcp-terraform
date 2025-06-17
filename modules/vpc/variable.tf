variable "vpc_network_name" {
  type = string
  description = "Name of the VPC network"
}
variable "vpc_subnetwork_name" {
  type = string
  description = "Name of the VPC subnetwork"
}
variable "region" {
  type = string
  description = "Region for the VPC and subnetwork"
}
variable "vpc_subnetwork_name_1" {
  type = string
  description = "Name of the first private subnetwork"
}

variable "vpc_subnetwork_name_2" {
  type = string
  description = "Name of the second private subnetwork"
}

variable "vpc_subnetwork_cidr" {
  type = string
  description = "CIDR range for the public subnetwork"
}
variable "vpc_subnetwork_cidr_1" {
  type = string
  description = "CIDR range for the first private subnetwork"
}
variable "vpc_subnetwork_cidr_2" {
  type = string
  description = "CIDR range for the second private subnetwork"
}
variable "cloud_router_name" {
  type = string
  description = "Name of the Cloud Router"
}
variable "cloud_nat_name" {
  type = string
  description = "Name of the Cloud NAT"
}