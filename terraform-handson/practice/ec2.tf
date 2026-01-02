resource "aws_instance" "terraform" {
    #count = 4
    #count = length(var.instance_name)
    #for_each = var.instance_name
    for_each = toset(var.instance_name)
    ami = data.aws_ami.rohithdevops.id
    #instance_type = each.value
    instance_type = "t3.micro"
    #instance_type = var.environment == "Dev" ? "t3.medium" : "t2.medium"
    vpc_security_group_ids = [aws_security_group.allow-all.id]

    tags = {
      #Name = each.key
      Name = each.value
      Terraform = true
    }
}

resource "aws_security_group" "allow-all" {
    name = "allow-all"
    description = "creating sg for ec2"
    
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
   ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    tags = {
      Name ="allow-all"
    }
}