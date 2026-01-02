# resource "aws_route53_record" "roboshop" {
#     count = 4
#     count = length(var.instance_name)
#     zone_id = "${var.zone}"
#     name = "${var.instance_name[count.index]}.${var.domain_name}"
#     type = "A"
#     ttl = 1
#     records = [aws_instance.terraform[count.index].private_ip]
#     allow_overwrite = true
# }

# resource "aws_route53_record" "roboshop" {
#     for_each = aws_instance.terraform
#     zone_id = "${var.zone}"
#     name = "${each.key}.${var.domain_name}"
#     type = "A"
#     ttl = 1
#     records = [each.value.private_ip]
#     allow_overwrite = true
  
# }