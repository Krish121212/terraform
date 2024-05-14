#we are calling local variable for expression from local.tf
resource "aws_route53_record" "Expense" {
  for_each = aws_instance.Expense
  zone_id = var.zone_id
  name    = each.key == "frontend" ?  var.domain_name  : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip] 
  #if records already exists
  allow_overwrite = true
}