data "aws_ami" "ami_data" {
    owners = [973714476881]
    most_recent = true

    filter {
      name = "name"
      values = [RHEL-9-DevOps-Practice]
    }

    filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "data_ami" {
    value = data.aws_ami.ami_data.id
  
}