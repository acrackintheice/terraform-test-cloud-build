terraform {
  backend "gcs" {
    bucket = "test_bucket_eonghero"
    prefix = "terraform/state/tm-test"
  }

  required_version = "1.5.7"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.47.0"
    }
  }
}

resource "google_service_account" "vault-server" {
  account_id   = "eonghero-tm-test"
  display_name = "eonghero-tm-test"
  project      = "qt-msa-sandbox-7b"
}