#Count
resource "aws_instance" "web_list" {
  count         = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance-type

  tags = var.tags_prod
}

#For_Each
# Cria instancias para cada type informado
resource "aws_instance" "web" {
  # caso prefira usar com o valor diretamente
  # for_each = toset(["t2.micro", "t3.micro"])
  # caso prefira usar com uma variável 
  for_each         = var.instance_type_map
  ami           = data.aws_ami.ubuntu.id
  instance_type = each.key

  tags = {
    Name = each.value
  }
}

#Exemplo List
variable "instance_type_list" {
  default = [
    "t2.micro",
    "t3.micro"
  ]
}

#Exemplo Map
variable "instance_type_map" {
  default = {
    "t2.micro" = "FIAP-t2-micro",
    "t3.micro" = "FIAP-t3-micro"
  }
}