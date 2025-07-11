variable "bucket_name" {
  description = "Insira um nome para o Bucket"
  default = ""
}

variable "acl" {
    description = "Insira a ACL usada no Bucket"
    default = "private"
}

variable "region_default" {
    description = "Insira o valor da região onde o recurso será criado"
    default = "us-east-1" #Norte da Virginia
  
}