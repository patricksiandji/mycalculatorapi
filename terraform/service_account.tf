resource "google_service_account" "cr_service_account" {
  account_id   = var.srv_account_id
  display_name = "cloud run service account from terraform"
  project      = var.project_id
}
