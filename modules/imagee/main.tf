terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

resource "docker_image" "image" {
  name         = var.image_name
  force_remove = var.force_remove
  keep_locally = false
}
