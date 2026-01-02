resource "aws_instance" "terraform" {
    #count = 10
    count = length(var.instance)
    #for_each = toset(var.instance)
    ami = var.ami_id
    #ami = data.aws_ami.ami_data.id
    # instance_type = var.Environment == "roh" ? "t3.micro" : var.instance_con
    #for_each = var.instance
    #instance_type = each.value
    instance_type = var.instance_con
    vpc_security_group_ids = [aws_security_group.sample.id]

    #tags = var.ec2_tags
    tags = {
      Name = var.instance[count.index]
      #Name = each.key
    }
}

resource "aws_security_group" "sample" {
    name = "sample"

    egress {
        from_port = var.egress_from_port
        to_port = var.egress_to_port
        protocol = var.egress_protocol
        cidr_blocks = var.egress_cidr_blocks
    }

    ingress {
        from_port = var.ingress_from_port
        to_port = var.egress_to_port
        protocol = var.ingress_protocol
        cidr_blocks = var.ingress_cidr_blocks
    }

    tags = {
      Name = "sample"
    }
  
}