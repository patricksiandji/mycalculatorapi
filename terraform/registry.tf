resource "google_artifact_registry_repository" "repo_nginx_from_tf" {
      location      = "europe-west1"
      repository_id = "ci-cd-from-tf"
      description   = "fastapi repository"
      format        = "DOCKER"
 }