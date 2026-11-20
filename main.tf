terraform {
  required_version = ">= 1.4.0"
}

variable "environment" {
  type    = string
  default = "dev"
}

resource "terraform_data" "infrastructure" {
  input = {
    project     = "devops-training"
    environment = var.environment
    managed_by  = "terraform"
  }
}

output "configuration" {
  value = terraform_data.infrastructure.output
}
