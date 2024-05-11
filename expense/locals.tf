locals {
  instance_type = var.instance_names[count.index] == "db_practice" ? "t2.small" : "t2.micro"
  name = var.instance_names[count.index] == "frontend_practice" ?  var.domain_name  : "${var.instance_names[count.index]}.${var.domain_name}"
  records = var.instance_names[count.index] == "frontend_practice" ? [aws_instance.Expense[count.index].public_ip] : [aws_instance.Expense[count.index].private_ip]
}

#we wrote expressions here and calling this local variable in ec2 and r53 records 