terraform { 
  cloud { 
    hostname = "terraform-dev.nawat.me" 
    organization = "ADC" 

    workspaces { 
      name = "pipeline-test" 
    } 
  } 
}

provider "google" {
  project = "prj-adc-gcp-devsecops"
  region  = "me-central2"
}

resource "google_storage_bucket" "test_bucket" {
  name     = "tfe-test-bucket-${random_id.bucket_id.hex}"
  location = "US"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
