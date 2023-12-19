resource "google_artifact_registry_repository" "repo_nginx_from_tf" {
      location      = "europe-west1"
      repository_id = "ci-cd-images"
      description   = "fastapi repository"
      format        = "DOCKER"
 }