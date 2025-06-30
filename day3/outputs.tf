output "vm_public_ip" {
  value = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
  description = "The public IP of the virtual machine"
}

output "bucket_url" {
  value = "https://storage.googleapis.com/${google_storage_bucket.demo_bucket.name}"
  description = "URL of the GCP storage bucket"
}

