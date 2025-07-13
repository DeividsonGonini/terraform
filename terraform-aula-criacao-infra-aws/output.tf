# Aula 8 p.01
output "vpc_cird" {
  value = aws_vpc.vpc_fiap.cidr_block
}

output "vpc_id" {
  value = aws_vpc.vpc_fiap.id
}

# [*] pega o valor de todos os index
# .cidr_block especifica qual valor sera recuperado
output "subnet_cird" {
  value = aws_subnet.subnet_public[*].cidr_block
}

output "subnet_id" {
  value = aws_subnet.subnet_public[*].id
}