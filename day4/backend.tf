terraform {
  backend "gcs" {
    bucket = "my-tfday4-state-bucket"
    prefix = "env"
  }
}
