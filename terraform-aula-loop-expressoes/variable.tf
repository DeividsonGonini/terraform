### REGEX ###
variable "bucket_name" {
  type        = string
  description = "Nome utilizado no bucket"
  default     = "bucket-aula7-deivi-teste"
}

#Regex para extrair o que está depois do padrão definido (bucket-aula7-deivi-)
output "regex_bucket" {
  value = regex("bucket-aula7-deivi-(\\d+)", var.bucket_name)
}


variable "bucket_name_list_1" {
  type        = string
  description = "Nome utilizado no bucket"
  default     = "bucket-aula7-deivi-2025, bucket-aula7-deivi-2022, bucket-aula7-deivi-2028"
}
#Regex que irá trazer apenas o primeiro valor encontrado que está depois do padrão definido (bucket-aula7-deivi-)
output "bucket_name_list_1" {
  value = regex("bucket-aula7-deivi-(\\d+)", var.bucket_name_list_1)
}

###############################################
### REGEX_ALL ###
variable "bucket_name_list_2" {
  type        = string
  description = "Nome utilizado no bucket"
  default     = "bucket-aula7-deivi-2025, bucket-aula7-deivi-2022, bucket-aula7-deivi-2028"
}

#Regex que irá percorrer a lista e trazer todos os valores encontrados que estão depois do padrão definido (bucket-aula7-deivi-)
output "bucket_name_list_2" {
value = regexall("bucket-aula7-deivi-(\\d+)", var.bucket_name_list_2)
}

variable "bucket_name_list_3" {
  type        = string
  description = "Nome utilizado no bucket"
  default     = "bucket-aula7-deivi-2025, bucket-teste-2028"
}

#Regex que irá percorrer a lista e trazer todos os valores encontrados que estão depois do padrão definido (bucket-aula7-deivi-)
#Nesse caso trará somente o primeiro valor, pois o segundo não segue o padrão
output "bucket_name_list_7" {
  value = regexall("bucket-aula7-deivi-(\\d+)", var.bucket_name_list_3)
}


###############################################
### LENGTH ###
variable "bucket_name_length" {
  type        = string
  description = "Nome utilizado no bucket"
  default     = "bucket-aula-fiap-2025-prod"
}

#Regex que irá percorrer a lista e trazer todos os valores encontrados que estão depois do padrão definido (bucket-aula-fiap-2025)
#Irá validar se no final tem um dos sufixos (-prod, -stage, -dev)
output "bucket_name_length" {
value = length(regexall("^[a-z0-9]+-(aula|live)+-(fiap|alura)+-[0-9]+-(prod|stage|dev)", var.bucket_name_length))
}
# ^[a-z0-9]: permite que o começo aceite de a até z e numeros
# +: adiciona uma validação 
# -: esta obrigando que tenha o "-" para separar as palavras
# (aula|live): na proxima palavra após o "-" só aceita aula ou live
# [0-9]: permite apenas numeros


###############################################

variable "tags_dev" {
  type = map(string)
  default = {
    Name        = "aula2"
    Environment = "Develop"
  }
}


variable "tags_prod" {
  type = map(string)
  default = {
    Name        = "FIAP"
    Environment = "Production"
    Fiap        = "postech"
  }
}

variable "region_default" {
  description = "Região usada para criação"
  type        = string
  default     = "us-east-1"
}

variable "region_sp" {
  default = "sa-east-1"
}

variable "instance-type" {
  default = "t2.micro"
}