# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Input variable definitions

variable "image_name" {
  default = "nginx:latest"
  type    = string
}

variable "force_remove" {
  default = false
  type    = bool
}