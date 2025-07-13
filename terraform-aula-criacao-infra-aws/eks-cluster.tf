#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster
resource "aws_eks_cluster" "cluster" {
  name = "eks-${var.projectName}"

  # API: atraves do Access Entry
  # Configmap: pode criar um configmap chamado awsAuth e definir toda as regras de permissão para cada usuario
  access_config {
    authentication_mode = "API"
  }


  role_arn = aws_iam_role.cluster.arn
  version  = "1.31"

  vpc_config {
    subnet_ids = [
      aws_subnet.subnet_public[0].id,
      aws_subnet.subnet_public[1].id,
      aws_subnet.subnet_public[2].id
    ]
  }

  # Declara dependencia da criação da IAM Role Police antes de criar o cluster
  depends_on = [
    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
  ]
}
