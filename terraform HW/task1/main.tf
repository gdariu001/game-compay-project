resource "google_storage_bucket" "task1" {
  name          = "${var.project_id}-task1"
  location      = var.location
  force_destroy = true
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

  uniform_bucket_level_access = false
}

resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.task1.name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_bucket_iam_binding" "public_access" {
  bucket = google_storage_bucket.task1.name
  role   = "roles/storage.objectViewer"

  members = [
    "allUsers",
  ]
}

resource "google_storage_bucket_object" "default" {
  name         = "index.html"
  source       = "public/index.html"
  content_type = "text/html"
  bucket       = google_storage_bucket.task1.name
}

