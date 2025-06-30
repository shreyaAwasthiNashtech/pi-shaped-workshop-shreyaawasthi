provider "google" {
  project = "helical-clock-463918-c9"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "demo-vm-1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_storage_bucket" "demo_bucket" {
  name     = "demo-bucket-${random_id.bucket_suffix.hex}"
  location = "US"
  force_destroy = true
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

