#### Exemplo de Arquivo Locals ####
locals {
  instanceType = "t2.micro"
  tags = {
    environment = "production"
    owner       = "team"
  }

  name   = "fiap"
  school = "postech"
  turma  = "11soat"
}