output "bucket_bucket-aula_arn"{
    value =  aws_s3_bucket.bucket-aula.arn # Aponta o recurso e o parâmetro que queremos recuperar o valor
    description = "Retorna o valor do arn do bucket criado na AWS"
}

output "bucket_bucket-aula_id"{
    value =  aws_s3_bucket.bucket-aula.id
}