module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = var.vpc_name
  cidr   = var.vpc_CIDR

  azs                  = [var.zone1, var.zone2, var.zone3]
  private_subnets      = [var.PrivSub1CIDR, var.PrivSub2CIDR, var.PrivSub3CIDR]
  public_subnets       = [var.PubSub1CIDR, var.PubSub2CIDR, var.PubSub3CIDR]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "prod"
  }
  vpc_tags = {
    name = var.vpc_name
  }


}