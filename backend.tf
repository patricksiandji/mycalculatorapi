
terraform {
  backend "gcs" {
    bucket = "bucket-ci-cd"
    prefix = "ci-cd-state-file"
    
  }
}