resource "aws_instance" "public_instance" {
    ami = var.ec2_specs.ami
    instance_type = var.ec2_specs.instance_type
    subnet_id = aws_subnet.public_subnet.id
    tags = {
        Name = "public-instance"
    }
    key_name = data.aws_key_pair.develop_key_pair.key_name
    vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
    user_data = file("userdata.sh")

    provisioner "local-exec" {
        command = "echo ${aws_instance.public_instance.public_ip} > public_ip.txt"
    }

    provisioner "local-exec" {
      when = destroy
        command = "echo ${self.public_ip} > destruir.txt"
    }

    # provisioner "remote-exec" {
    #     inline = [
    #         "sudo echo 'Hello World from public instance' > saludo.txt"
    #     ]

    #     connection {
    #         type = "ssh"
    #         host = self.public_ip
    #         user = "ec2-user"
    #         private_key = file("/Users/jgongora/Downloads/develop.pem")
    #     }
    # }
}