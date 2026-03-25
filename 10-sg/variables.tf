variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    default = [
        #database
        "mongodb", "mysql", "redis", "rabbitmq", 
        #backend
        "catalogue", "user", "cart", "payment", "shipping", 
        #public
        "frontend",
        #bastion
        "bastion",
        #frontend application load balancer
        "frontend_alb",
        #backend application load balancer
        "backend_alb",
        "openvpn"
    ]
}