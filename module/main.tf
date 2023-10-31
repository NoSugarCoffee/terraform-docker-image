terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

variable "image_name" {
  default = "nginx:latest"
}

variable "force_remove" {
  default = false
}

resource "docker_image" "nginx" {
  name         = var.image_name
  force_remove = var.force_remove
  keep_locally = false
}

output "image_name" {
  value = var.image_name
}
