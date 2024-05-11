#we are calling local variable for expression from local.tf
resource "aws_route53_record" "Expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = var.instance_names[count.index] == "frontend_practice" ?  var.domain_name  : "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = var.instance_names[count.index] == "frontend_practice" ? [aws_instance.Expense[count.index].public_ip] : [aws_instance.Expense[count.index].private_ip]
  #if records already exists
  allow_overwrite = true
}