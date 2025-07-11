variable "ami" {
  description = "insira o ID da AMI usada na EC2"
}

variable "instance_type" {
    description = "valor usado para o tipo de instancia"
    default = "t2.micro"
}

variable "instance_name" {
    description = "nome definido para a instancia"
}

variable "region_default" {
    description = "Insira o valor da região onde o recurso será criado"
    default = "us-east-1" #Norte da Virginia
  
}