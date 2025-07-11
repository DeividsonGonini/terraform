#Data Source da imagem da instancia 
data "aws_ami" "ubuntu" {
  most_recent = true # versão mais recente

  # Filtros para recuperar o valor específico  
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  #Filtro do tipo de virtualização
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical (Detentora do Ubuntu)
}