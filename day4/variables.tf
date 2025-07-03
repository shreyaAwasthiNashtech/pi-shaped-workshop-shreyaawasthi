variable "vm_name" {}
variable "machine_type" {}
variable "vm_image" {default = "debian-cloud/debian-11"}
variable "bucket_name" {}
variable "region" {}
variable "zone" {}
variable "project" {
  description = "helical-clock-463918-c9"
  type        = string
}
