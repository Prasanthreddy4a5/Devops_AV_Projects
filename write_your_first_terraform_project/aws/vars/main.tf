variable "components" {
  default = ["catalogue", "frontend", "mongodb"]
}

locals {
  component_index = [for i in var.components : i]
}

output "components" {
  value = local.component_index[count.index]
}
