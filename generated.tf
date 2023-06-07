# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "527625993734726934"
resource "google_compute_instance" "bueno_instance2" {
  provider                  = google.west
  allow_stopping_for_update = null
  can_ip_forward            = false
  deletion_protection       = false
  description               = null
  desired_status            = null
  enable_display            = false
  guest_accelerator         = []
  hostname                  = null
  labels                    = {}
  machine_type              = "e2-micro"
  metadata                  = {}
  metadata_startup_script   = null
  min_cpu_platform          = null
  name                      = "bueno-instance2"
  project                   = "hc-581de7a90ab143c98db62d0a5e7"
  resource_policies         = []
  tags                      = []
  zone                      = "us-west1-b"
  boot_disk {
    auto_delete             = true
    device_name             = "bueno-instance2"
    disk_encryption_key_raw = null # sensitive
    kms_key_self_link       = null
    mode                    = "READ_WRITE"
    source                  = "https://www.googleapis.com/compute/v1/projects/hc-581de7a90ab143c98db62d0a5e7/zones/us-west1-b/disks/bueno-instance2"
    initialize_params {
      image  = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20230509"
      labels = {}
      size   = 10
      type   = "pd-balanced"
    }
  }
  confidential_instance_config {
    enable_confidential_compute = false
  }
  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/hc-581de7a90ab143c98db62d0a5e7/global/networks/default"
    network_ip         = "10.138.0.2"
    nic_type           = null
    queue_count        = 0
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/hc-581de7a90ab143c98db62d0a5e7/regions/us-west1/subnetworks/default"
    subnetwork_project = "hc-581de7a90ab143c98db62d0a5e7"
    access_config {
      nat_ip                 = "35.247.51.77"
      network_tier           = "PREMIUM"
      public_ptr_domain_name = null
    }
  }
  reservation_affinity {
    type = "ANY_RESERVATION"
  }
  scheduling {
    automatic_restart           = true
    instance_termination_action = null
    min_node_cpus               = 0
    on_host_maintenance         = "MIGRATE"
    preemptible                 = false
    provisioning_model          = "STANDARD"
  }
  service_account {
    email  = "217239989318-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }
  timeouts {
    create = null
    delete = null
    update = null
  }
}

# __generated__ by Terraform from "5113980496913769765"
resource "google_compute_instance" "bueno_instance1" {
  provider                  = google.central
  allow_stopping_for_update = null
  can_ip_forward            = false
  deletion_protection       = false
  description               = null
  desired_status            = null
  enable_display            = false
  guest_accelerator         = []
  hostname                  = null
  labels                    = {}
  machine_type              = "e2-micro"
  metadata                  = {}
  metadata_startup_script   = null
  min_cpu_platform          = null
  name                      = "bueno-instance1"
  project                   = "hc-581de7a90ab143c98db62d0a5e7"
  resource_policies         = []
  tags                      = []
  zone                      = "us-central1-a"
  boot_disk {
    auto_delete             = true
    device_name             = "bueno-instance1"
    disk_encryption_key_raw = null # sensitive
    kms_key_self_link       = null
    mode                    = "READ_WRITE"
    source                  = "https://www.googleapis.com/compute/v1/projects/hc-581de7a90ab143c98db62d0a5e7/zones/us-central1-a/disks/bueno-instance1"
    initialize_params {
      image  = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20230509"
      labels = {}
      size   = 10
      type   = "pd-balanced"
    }
  }
  confidential_instance_config {
    enable_confidential_compute = false
  }
  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/hc-581de7a90ab143c98db62d0a5e7/global/networks/default"
    network_ip         = "10.128.0.2"
    nic_type           = null
    queue_count        = 0
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/hc-581de7a90ab143c98db62d0a5e7/regions/us-central1/subnetworks/default"
    subnetwork_project = "hc-581de7a90ab143c98db62d0a5e7"
    access_config {
      nat_ip                 = "35.202.67.178"
      network_tier           = "PREMIUM"
      public_ptr_domain_name = null
    }
  }
  reservation_affinity {
    type = "ANY_RESERVATION"
  }
  scheduling {
    automatic_restart           = true
    instance_termination_action = null
    min_node_cpus               = 0
    on_host_maintenance         = "MIGRATE"
    preemptible                 = false
    provisioning_model          = "STANDARD"
  }
  service_account {
    email  = "217239989318-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }
  timeouts {
    create = null
    delete = null
    update = null
  }
}
