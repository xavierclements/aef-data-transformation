resource "google_storage_bucket" "aef_artifacts_bucket" {
  name                     = "${var.project}_aef_artifacts_bucket"
  location                 = var.region
  project                  = var.project
  public_access_prevention = "enforced"
  force_destroy            = false
}

resource "google_storage_bucket" "aef_jobs_bucket" {
  name                     = "${var.project}_aef_jobs_bucket"
  location                 = var.region
  project                  = var.project
  public_access_prevention = "enforced"
  force_destroy            = false
}