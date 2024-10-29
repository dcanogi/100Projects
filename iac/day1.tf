# Day 1 Objective: Create a simple infrastructure using Terraform to provision a virtual machine (VM) on a cloud provider.

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}
provider "google" {
  project = "XXXX" # Project ID number
}
# Create network
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
# Create Virtual Machine
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance" # Name for the instance
  machine_type = "f1-micro" # Machine type
  # Select image
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  # Assign created network terraform-network
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
