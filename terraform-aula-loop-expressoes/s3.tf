resource "aws_s3_bucket" "bucket-backend" {
  bucket = "tfstate-backend-fiap-deivi"
  tags   = var.tags_prod
}

resource "aws_s3_bucket" "bucket-aula" {
  provider = "aws.sp"
  bucket   = "${local.name}-${local.school}-${local.turma}-deivi"
  tags     = var.tags_dev
}

resource "aws_s3_bucket" "bucket-aula3" {
  provider = "aws.sp"
  bucket   = "${var.bucket_name}-prod" #Exemplo Interpolação
  tags     = var.tags_prod
}

resource "aws_s3_bucket" "bucket-soat-deivi" {
  provider = "aws.sp"
  bucket   = "${data.aws_s3_bucket.soat.id}-3" #Exemplo Interpolação
  tags     = var.tags_prod
}