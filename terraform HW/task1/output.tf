#"https://storage.googleapis.com/heat-wave-416401-task1/index.html
output "bucket_url" {
  value = "${var.google_bucket_url}${google_storage_bucket.task1.id}/index.html"
}
