variable "instances" {
    description = "value of instances"
    type = set(string)
    default = ["apache-server"]
  
}

resource "aws_instance" "public_instance" {
    for_each = var.instances
    ami = var.ec2_specs.ami
    instance_type = var.ec2_specs.instance_type
    subnet_id = aws_subnet.public_subnet.id
    key_name = data.aws_key_pair.develop_key_pair.key_name
    vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
    user_data = file("userdata.sh")

    tags = {
        "Name" = "${each.value}-${local.sufix}"
    }
}

resource "aws_instance" "monitring_instance" {
    count = var.enable_monitoring ? 1 : 0
    ami = var.ec2_specs.ami
    instance_type = var.ec2_specs.instance_type
    subnet_id = aws_subnet.public_subnet.id
    key_name = data.aws_key_pair.develop_key_pair.key_name
    vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
    user_data = file("userdata.sh")

    tags = {
        "Name" = "monitoring-instance-${local.sufix}"
    }
}