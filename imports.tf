provider "google" {
  alias       = "central"
  credentials = var.gcp_creds
  project     = var.gcp_project
  region      = "us-central1"
  zone        = "us-central1-a"
}
provider "google" {
  alias       = "west"
  credentials = var.gcp_creds
  project     = var.gcp_project
  region      = "us-west1"
  zone        = "us-west1-b"
}

import {
  provider = google.central
  to       = google_compute_instance.bueno_instance1
  id       = "5113980496913769765"
}

import {
  provider = google.west
  to       = google_compute_instance.bueno_instance2
  id       = "527625993734726934"
}