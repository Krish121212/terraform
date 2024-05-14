resource "aws_instance" "Expense" {
#   count = length(var.instance_names)
  for_each = var.instance_names #each.key and each.value
  ami = data.aws_ami.ami_info.id
  vpc_security_group_ids = [ "sg-0b4982a41aa37eaa1" ]
  instance_type = each.value
  
  tags = merge(
    var.tags_Expense,
    {
      Name = each.key
      Module = each.key
    }
  )
}