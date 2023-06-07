variable "gcp_project" {
  description = "The GCP Project"
  type        = string
  default     = ""
}

variable "gcp_creds" {
  default = ""
}
variable "service_account_email" {
  type    = string
  default = ""
}
variable "service_account_scopes" {
  type    = list(any)
  default = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
}