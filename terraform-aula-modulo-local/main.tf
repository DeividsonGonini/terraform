module "ec2" {
  source        = "../modules/ec2"
  ami           = var.ami
  instance_name = var.instance_name
  region_default = "sa-east-1"
}

module "s3" {
   source = "../modules/s3"
   bucket_name = "fiap-modules-terraform-deivi"  
}