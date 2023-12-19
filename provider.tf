terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.9.0"
    }
  }
}

provider "google" {
  project = "cw-patrick-sandbox"
  region  = "europe-west1"
  zone    = "europe-west1-b"
  credentials = "credential.json"
}