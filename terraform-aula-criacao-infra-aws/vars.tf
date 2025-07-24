# Aula 8 p.01
variable "projectName" {
  default = "fiap-aula-deivi-terraform"
}

variable "region_default" {
  default = "us-east-1"
}

variable "cidr_vpc" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name = "fiap-terraform-aula",
    school = "FIAP",
    Environment = "Development",
    Year = "2025"
  }
}

# Aula 8 p.02
variable "instance_type" {
  default = "t2.micro"
}
