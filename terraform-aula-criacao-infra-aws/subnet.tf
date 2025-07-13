
# O Terraform é inteligente ao ponto de saber que precisa criar a VPC antes de criar as subnets,
# Assim ele terá os valores necessários quando for criar a Subnet
resource "aws_subnet" "subnet_public" {
  count  = 3                   #cria 3 subnets 
  vpc_id = aws_vpc.vpc_fiap.id #pega o id da VPC que iremos criar

  #cidrsubnet(prefix string, newbits number, netnum number) string
  # prefix = aws_vpc.vpc_fiap.cidr_block = pega os IPs do cidr_block da VPC
  # newbits = mascara de redes, vamos utilizar 4 (bits) que será a mascara de rede
  # netnum = é o index, count.index irá pegar o indexador do count acima.
  cidr_block = cidrsubnet(aws_vpc.vpc_fiap.cidr_block, 4, count.index)

  #Indica que iremos utilizar um IP publico
  map_public_ip_on_launch = true

  #Vamos definir as AZs para nao correr o risco de pegar uma AZ automaticamente e que não tenha acesso a Internet
  availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"][count.index]

  tags = var.tags
}