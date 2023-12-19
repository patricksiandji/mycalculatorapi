resource "google_cloud_run_v2_service" "fastapi" {
  name     = "fastapi-srv"
  location = "europe-west1"
  project  = "cw-patrick-sandbox"
  template {
    containers {
      image = "europe-west1-docker.pkg.dev/cw-patrick-sandbox/ci-cd-test/fastapi:latest"
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
  location    = google_cloud_run_v2_service.fastapi.location
  service     = google_cloud_run_v2_service.fastapi.name
  policy_data = data.google_iam_policy.noauth.policy_data
  project     = "cw-patrick-sandbox"
}