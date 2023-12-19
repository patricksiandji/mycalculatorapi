
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
}

variable "cr_image" {
  type    = string
}

variable "container_port" {
  type = number

}
variable "srv_account_id" {
  type    = string

}

variable "service_port" {
  type    = string
  default = 80
}