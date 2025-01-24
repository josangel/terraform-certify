variable "cidr_block" {
    description = "value of cidr block"
    type = string
}

# variable "public_subnet" {
#     description = "value of public subnet cidr block"
#     type = string
# }

# variable "private_subnet" {
#     description = "value of private subnet cidr block"
#     type = string
# }

variable subnets {
    description = "value of subnets"
    type = list
    default = []
}

variable "tags" {
    description = "value of tags"
    type = map(string)
    default = {}
  
}

variable "sg_ingress_cidr" {
    description = "value of ingress cidr"
    type = string
}

variable "ec2_specs" {
    description = "value of ec2 specs"
    type = map
}

variable "enable_monitoring" {
    description = "value of enable monitoring"
    type = bool
}

variable "sufix" {
    description = "value of sufix"
    type = string
}

variable "ingress_port_list" {
    description = "value of ingress port list"
    type = list(number)
}