terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.68.0"
    }
  }
}

resource "google_compute_instance" "bueno_instance1" {
  provider = google.central
  name     = "bueno-instance1"
  boot_disk {
    mode = "READ_WRITE"
  }
  machine_type = "e2-micro"
  network_interface {
    network = "default"
    access_config {
      nat_ip       = "35.202.67.178"
      network_tier = "PREMIUM"
    }
  }
  service_account {
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }
}
resource "google_compute_instance" "bueno_instance2" {
  provider = google.west
  name     = "bueno-instance2"
  boot_disk {
    mode = "READ_WRITE"
  }
  machine_type = "e2-micro"
  network_interface {
    network = "default"
    access_config {
      nat_ip       = "35.247.51.77"
      network_tier = "PREMIUM"
    }
  }
  service_account {
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }
}