output "vpc_id" {
    value = module.aws_vpc.vpc_id
}

output "igw" {
    value = module.aws_vpc.igw
} 

output "public_subnet_ids" {
    value = module.aws_vpc.public_subnet_ids
}

output "private_subnet_ids" {
    value = module.aws_vpc.private_subnet_ids
}

output "database_subnets_ids" {
    value = module.aws_vpc.database_subnet_ids
}