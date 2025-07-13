#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_entry

#Liberação de acesso para o usuario conseguir chegar no cluster
resource "aws_eks_access_entry" "access_entry" {
  cluster_name      = aws_eks_cluster.cluster.name
  principal_arn     = data.aws_iam_user.principal_user.arn #ARN do nosso usuario na AWS
  kubernetes_groups = ["group-11soat", "group-professores"]
  type              = "STANDARD"
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_policy_association
#Aqui associaremos a police de Administrador do Cluster
resource "aws_eks_access_policy_association" "access_entry_association" {
  cluster_name  = aws_eks_cluster.cluster.name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  principal_arn = data.aws_iam_user.principal_user.arn

  access_scope {
    type = "cluster"
  }
}