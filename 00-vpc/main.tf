module "aws_vpc" {
    source = "git::https://github.com/surekha25/terraform-aws-vpc.git?ref=main"
    # vpc_cidr =  "10.0.0.0/16"
    # project_name = "roboshop"
    # environment = "dev"
    
    vpc_cidr = var.vpc_cidr
    project_name = var.project
    environment = var.env
    vpc_tags = var.vpc_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = false
}
  