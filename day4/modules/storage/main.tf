resource "google_storage_bucket" "bucket" {
  name     = "${var.bucket_name}-${random_id.suffix.hex}"
  location = var.region
}

resource "random_id" "suffix" {
  byte_length = 4
}