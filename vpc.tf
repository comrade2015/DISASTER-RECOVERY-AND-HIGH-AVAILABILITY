# VPC
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.app_name}-vpc"
  cidr = "10.0.0.0/16"
  azs  = ["us-east-1a", "us-east-1b"]

  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "secondary_vpc" {
  source = "terraform-aws-modules/vpc/aws"

  providers = {
    aws = aws.secondary
  }

  name = "${var.app_name}-vpc-secondary"
  cidr = "10.1.0.0/16"
  azs  = ["us-west-2a", "us-west-2b"]

  public_subnets = ["10.1.1.0/24", "10.1.2.0/24"]
}