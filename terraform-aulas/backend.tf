terraform {
  backend "s3" {
    bucket = "tfstate-backend-fiap-deivi"  #Nome do bucket
    key    = "fiap/2025/terraform.tfstate" #Caminho onde o tfstate sera salvo
    region = "us-east-1"
  }
}