
variable "company_name" {
  type    = string
  default = "R-Astley-gmbh"

}
variable "project_id" {
  type    = string
  default = "cw-patrick-sandbox"

}

variable "default_region" {
  type    = string
  default = "europe-west1" #belgium
}

variable "default_zone" {
  type    = string
  default = "europe-west1-b"

}

variable "artifactory_repo_id" {
  type    = string
  default = "repo-nginx-from-tf"
}

variable "artifactory_format" {
  type    = string
  default = "DOCKER"

}

variable "cr_app_name" {
  type    = string
}

variable "cr_image" {
  type    = string
}

variable "container_port" {
  type = number

}

variable "api_id" {
  type    = string
  default = "r-astley-api"

}

variable "api_spec_path" {
  type    = string
  default = "./api_spec.yaml"
}

variable "srv_account_id" {
  type    = string

}

variable "service_port" {
  type    = string
  default = 80
}