#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_user
data "aws_iam_user" "principal_user" {
  user_name = "11soat-tf" # Identificador do usuario que queremos as infos.
}