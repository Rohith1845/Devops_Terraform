locals {
  instance_type = "t3.micro"
  common_name = "${var.project}-${var.Environment}"
  ami_id = data.aws_ami.rohithdevops.id
  common_tags = merge(
      var.ec2_tags,
      {
        Name = "${local.common_name}-locals-demo"
      }
    )
}