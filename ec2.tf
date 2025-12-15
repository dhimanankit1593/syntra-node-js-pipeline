# Key Pair (Login)

resource "aws_key_pair" "my_key" {
      key_name = "node-app-key"
      public_key = file("node-app-key.pub")
}

#VPC & Security Group 

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
name = "automate-syntrasg"
description = "this will add aTF generated Security group"
vpc_id = aws_default_vpc.default.id  # interpolation



#inbound rules

ingress{

from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
description = "SSH Open"
}

ingress{

from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
description = "HTTP Open"

}

ingress{

from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
description = "HTTPS Open"

}

#outbound rules

egress {

from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
description ="all access"

}

}
#EC2 Instance 

resource "aws_instance" "my_instance" {
key_name = aws_key_pair.my_key.key_name
security_groups = [aws_security_group.my_security_group.name] 
instance_type = var.ec2_instance_type
ami = var.ec2_ami_id


root_block_device {

volume_size = var.ec2_root_storage_size
volume_type = "gp3"

}

tags = {


Name = "Node Js Application Server"

}

}



