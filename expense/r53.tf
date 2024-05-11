#we are calling local variable for expression from local.tf
resource "aws_route53_record" "Expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = local.name
  type    = "A"
  ttl     = 300
  records = local.records
  #if records already exists
  allow_overwrite = true
}