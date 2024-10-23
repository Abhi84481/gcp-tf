provider "google" {
  project = "prj-adc-gcp-devsecops"
  region  = "me-central2"
}

resource "google_storage_bucket" "test_bucket" {
  name     = "tfe-test-bucket-${random_id.bucket_id.hex}"
  location = "ME"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
