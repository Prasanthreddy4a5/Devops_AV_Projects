output "test" {

    value = "Hello World"
    
}

output "Hello" {

    value = "Hello India"
    
}

variable "fruit"
{
default = "Apple"

}

output {

value = var.fruit

}