#### Arquivo onde definimos o Provider utilizado, nesse caso AWS ####

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region_default
}

provider "aws" {
  alias  = "sp"
  region = var.region_sp
}

output "bucket_arn" {
value = aws_s3_bucket.backend-tf.arn
}