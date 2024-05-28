# project     = var.project_id
#   region      = var.region
#   zone        = var.zone
#   credentials = var.credentials

variable "project_id" {
  type        = string
  description = "The project ID to deploy resources"
  default     = "heat-wave-416401"
}

variable "region" {
  type        = string
  description = "The region to deploy resources"
  default     = "europe-west1"
}

variable "zone" {
  type        = string
  description = "The zone to deploy resources"
  default     = "europe-west1-b"
}

variable "credentials" {
  type        = string
  description = "The path to the service account key file"
  default     = "heat-wave-416401-0c68f0f47255.json"
}

variable "location" {
  type        = string
  description = "The location to deploy resources"
  default     = "eu"
}

variable "google_bucket_url" {
  type        = string
  description = "Google storage bucket URL"
  default     = "https://storage.googleapis.com/heat-wave-416401-task1/index.html"
}