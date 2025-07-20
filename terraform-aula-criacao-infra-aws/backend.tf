# terraform {
#   backend "s3" {
#     bucket = "fiap-aula-deivi-terraform"
#     key    = "aula-08/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

terraform {
  cloud {
    organization = "fiap-soat-terraform"

    workspaces {
      name = "terraform"
    }
  }
}
