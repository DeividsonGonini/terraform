variable "bucket_name" {
  type        = string
  description = "Nome utilizado no bucket"
  default     = "bucket-aula2-deivi"
}

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
    Name        = "aula3"
    Environment = "Production"
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

variable "instance-type"{
  default = "t2.micro"
}