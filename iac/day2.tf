# Day 2 Objective: Provision a Google Cloud Storage Bucket using Terraform.
# Day 2 Objective: Provision a Google Cloud Storage Bucket using Terraform.

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

# Create a Google Cloud Storage Bucket
resource "google_storage_bucket" "my_bucket" {
  name          = "my-unique-bucket-name" # Ensure this name is globally unique
  location      = "US"                     # Specify the location for the bucket
  storage_class = "STANDARD"               # Set the storage class (e.g., STANDARD, NEARLINE, etc.)
}

# Output the bucket name
output "bucket_name" {
  value       = google_storage_bucket.my_bucket.name
  description = "The name of the created Google Cloud Storage bucket."
}
