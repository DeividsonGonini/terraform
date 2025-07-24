# #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group
# resource "aws_eks_node_group" "node_group" {
#   cluster_name    = aws_eks_cluster.cluster.name
#   node_group_name = "nodeg-${var.projectName}"
#   node_role_arn   = aws_iam_role.node.arn
#   subnet_ids      = aws_subnet.subnet_public[*].id
#   disk_size       = 50
#   instance_types  = [var.instance_type]


#   scaling_config {
#     desired_size = 2
#     max_size     = 2
#     min_size     = 1
#   }

#   # Em caso de atualização ele fará a atualização de no maximo 1 node,
#   # assim se tivermos temos no mínimo 2 por exemplo um sempre estará funcionando enquanto o outro atualiza
#   update_config {
#     max_unavailable = 1
#   }

#   # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
#   # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
#   depends_on = [
#     aws_iam_role_policy_attachment.node-AmazonEKSWorkerNodePolicy,
#     aws_iam_role_policy_attachment.node-AmazonEKS_CNI_Policy,
#     aws_iam_role_policy_attachment.node-AmazonEC2ContainerRegistryReadOnly,
#   ]
# }