terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.47.0"
    }
  }
}

provider "google" {
  project     = "skillful-hope-295119"
  region      = "europe-west4"
  zone        = "europe-west4-a"
}

