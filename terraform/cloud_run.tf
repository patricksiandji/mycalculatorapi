resource "google_cloud_run_v2_service" "fas" {
  name     = "fastapi-srv"
  location = var.default_region
  project  = var.project_id
  template {
    containers {
      image = "europe-west1-docker.pkg.dev/cw-patrick-sandbox/ci-cd-from-tf/fastapi:latest"
      ports {
        container_port = "80"
      }
    }
  
  }

}

#Allow unauthenticated invocations
data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_v2_service.cr_nginx_app.location
  service     = google_cloud_run_v2_service.cr_nginx_app.name
  policy_data = data.google_iam_policy.noauth.policy_data
  project     = var.project_id
}