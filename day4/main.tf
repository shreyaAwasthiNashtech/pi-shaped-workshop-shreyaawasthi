provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

module "vm" {
  source       = "./modules/vm"
  vm_name      = var.vm_name
  machine_type = var.machine_type
  vm_image     = var.vm_image
  region       = var.region
  zone         = var.zone
}

module "storage" {
  source      = "./modules/storage"
  bucket_name = var.bucket_name
  region      = var.region
}
