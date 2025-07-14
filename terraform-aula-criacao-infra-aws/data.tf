#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_user
data "aws_iam_user" "principal_user" {
  user_name = "11soat-tf" # Identificador do usuario que queremos as infos.
}

#Aula 8 p.03
#Valores utilizados pelo provicer kubectl (do Manifest) 
data "aws_eks_cluster" "cluster" {
  name = aws_eks_cluster.cluster.name
}

data "aws_eks_cluster_auth" "auth" {
  name = aws_eks_cluster.cluster.name
}

###