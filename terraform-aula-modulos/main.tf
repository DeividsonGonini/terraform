module "ec2-instance_example_complete" {
  source  = "terraform-aws-modules/ec2-instance/aws//examples/complete"
  version = "6.0.2"
}

output ec2_complete_arn{
    value = "ec2_complete_arn"
}