
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

variable "cr_app_name" {
  type    = string
  default = "cr-fastapi"
}

variable "cr_image" {
  type    = string
  default = "fastapi"
}

variable "container_port" {
  type = number
  default = 80

}
variable "srv_account_id" {
  type    = string
  default = "my-srv-acc"

}

variable "service_port" {
  type    = string
  default = 80
}