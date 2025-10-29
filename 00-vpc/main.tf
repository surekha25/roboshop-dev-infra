module "vpc" {
    source = "git::https://github.com/surekha25/terraform-aws-vpc.git?ref=main"
    # VPC
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    # public subnets
    public_subnet_cidr = var.public_subnet_cidr

    # private subnets
    private_subnet_cidr = var.private_subnet_cidr

    # database subnets
    database_subnet_cidr = var.database_subnet_cidr

    is_peering_required = true
}
