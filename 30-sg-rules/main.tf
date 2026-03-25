# Mangodb accepting connections from bastion on port 22
resource "aws_security_group_rule" "mongodb_bastion" {
  type = "ingress"
  security_group_id = local.mongodb_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# Mangodb accepting connections from catalogue on port 27017
resource "aws_security_group_rule" "mongodb_catalogue" {
  type = "ingress"
  security_group_id = local.mongodb_sg_id
  source_security_group_id = local.catalogue_sg_id
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
}

# Mangodb accepting connections from user on port 27017
resource "aws_security_group_rule" "mongodb_user" {
  type = "ingress"
  security_group_id = local.mongodb_sg_id
  source_security_group_id = local.user_sg_id
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
}

# Radis accepting connections from bastion on port 22
resource "aws_security_group_rule" "redis_bastion" {
  type = "ingress"
  security_group_id = local.redis_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# Radis accepting connections from user on port 6379
resource "aws_security_group_rule" "redis_user" {
  type = "ingress"
  security_group_id = local.redis_sg_id
  source_security_group_id = local.user_sg_id
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
}

# Radis accepting connections from cart on port 6379
resource "aws_security_group_rule" "redis_cart" {
  type = "ingress"
  security_group_id = local.redis_sg_id
  source_security_group_id = local.cart_sg_id
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
}

# Mysql accepting connections from bastion on port 22
resource "aws_security_group_rule" "mysql_bastion" {
  type = "ingress"
  security_group_id = local.mysql_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# Mysql accepting connections from shipping on port 3306
resource "aws_security_group_rule" "mysql_shipping" {
  type = "ingress"
  security_group_id = local.mysql_sg_id
  source_security_group_id = local.shipping_sg_id
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
}

# RabbitMQ accepting connections from bastion on port 22
resource "aws_security_group_rule" "rabbitmq_bastion" {
  type = "ingress"
  security_group_id = local.rabbitmq_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# RabbitMQ accepting connections from payment on port 5672
resource "aws_security_group_rule" "rabbitmq_payment" {
  type = "ingress"
  security_group_id = local.rabbitmq_sg_id
  source_security_group_id = local.payment_sg_id
  from_port         = 5672
  to_port           = 5672
  protocol          = "tcp"
}

#### CATALOGUE SG RULES ####

# Catalogue accepting connections from bastion on port 22
resource "aws_security_group_rule" "catalogue_bastion" {
  type = "ingress"
  security_group_id = local.catalogue_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# Catalogue accepting connections from backend alb on port 8080
resource "aws_security_group_rule" "catalogue_backend_alb" {
  type = "ingress"
  security_group_id = local.catalogue_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
}

# This is the mistake we did, cart can't access catalogue directly - means cannot access components directly from one component to another component, it should be communicated through backend ALB

# resource "aws_security_group_rule" "catalogue_cart" {
#   type = "ingress"
#   security_group_id = local.catalogue_sg_id
#   source_security_group_id = local.cart_sg_id
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
# }

#### USER SG RULES ####

# User accepting connections from bastion on port 22
resource "aws_security_group_rule" "user_bastion" {
  type = "ingress"
  security_group_id = local.user_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# User accepting connections from backend alb on port 8080
resource "aws_security_group_rule" "user_backend_alb" {
  type = "ingress"
  security_group_id = local.user_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
}

#### CART SG RULES ####

# Cart accepting connections from bastion on port 22
resource "aws_security_group_rule" "cart_bastion" {
  type = "ingress"
  security_group_id = local.cart_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# Cart accepting connections from backend alb on port 8080
resource "aws_security_group_rule" "cart_backend_alb" {
  type = "ingress"
  security_group_id = local.cart_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
}

#### SHIPPING SG RULES ####

# Shipping accepting connections from bastion on port 22
resource "aws_security_group_rule" "shipping_bastion" {
  type = "ingress"
  security_group_id = local.shipping_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# Shipping accepting connections from backend alb on port 8080
resource "aws_security_group_rule" "shipping_backend_alb" {
  type = "ingress"
  security_group_id = local.shipping_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
}

#### PAYMENT SG RULES ####

# Payment accepting connections from bastion on port 22
resource "aws_security_group_rule" "payment_bastion" {
  type = "ingress"
  security_group_id = local.payment_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# Payment accepting connections from backend alb on port 8080
resource "aws_security_group_rule" "payment_backend_alb" {
  type = "ingress"
  security_group_id = local.payment_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
}

#### BACKEND ALB SG RULES ####

# Backend ALB accepting connections from bastion on port 80
resource "aws_security_group_rule" "backend_alb_bastion" {
  type = "ingress"
  security_group_id = local.backend_alb_sg_id 
  source_security_group_id = local.bastion_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}

# Backend ALB accepting connections from frontend on port 80
resource "aws_security_group_rule" "backend_alb_frontend" {
  type = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.frontend_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}

# Backend ALB accepting connections from cart on port 80
resource "aws_security_group_rule" "backend_alb_cart" {
  type = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.cart_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}

# Backend ALB accepting connections from shipping on port 80
resource "aws_security_group_rule" "backend_alb_shipping" {
  type = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.shipping_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}

# Backend ALB accepting connections from payment on port 80
resource "aws_security_group_rule" "backend_alb_payment" {
  type = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.payment_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}

#### FRONTEND SG RULES ####

# Frontend accepting connections from bastion on port 22
resource "aws_security_group_rule" "frontend_bastion" {
  type = "ingress"
  security_group_id = local.frontend_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

# Frontend accepting connections from Frontend ALB on port 80
resource "aws_security_group_rule" "frontend_frontend_alb" {
  type = "ingress"
  security_group_id = local.frontend_sg_id
  source_security_group_id = local.frontend_alb_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}

#### FRONTEND ALB RULES ####

# Frontend ALB accepting connections from public on port 443
resource "aws_security_group_rule" "frontent_alb_public" {
  type = "ingress"
  security_group_id = local.frontend_alb_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
}

#### BASTION RULES ####

# Bastion accepting connections from local(laptop) on port 22
resource "aws_security_group_rule" "bastion_laptop" {
  type = "ingress"
  security_group_id = local.bastion_sg_id 
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

#### Open VPN RULES ####

# Openvpn accepting connections from local(laptop) on port 22
resource "aws_security_group_rule" "openvpn_public" {
  type = "ingress"
  security_group_id = local.openvpn_sg_id 
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}