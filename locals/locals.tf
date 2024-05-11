locals {
  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-0abdcecb9f56f75ca"
  instance_type = var.instance_name == "db" ? "t2.small" : "t2.micro"
}