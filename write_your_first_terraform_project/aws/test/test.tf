output "test" {

    value = "Hello World"
    
}

output "Hello" {

    value = "Hello India"
    
}

variable "fruit"{
default = "Apple"

}

output "fruit"{

value = var.fruit

}


variable "components" {
  default = ["catalogue", "frontend", "mongodb"]
}

  count = length(var.components)

output "components"{
value = var.components[count.index]

  #Name = var.components[count.index]
  #Name = element(var.components, count.index)
  }


