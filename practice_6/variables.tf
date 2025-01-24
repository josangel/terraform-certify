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