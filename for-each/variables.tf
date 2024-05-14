variable "instance_names" {
  type = map
  default = {
    db = "t2.micro"
    backend = "t2.micro"
    frontend = "t2.micro"
  }
}

variable "tags_Expense" {
  type = map
  default = {
    project = "Expense"
    terraform = "true"
  }
}   

variable "zone_id" {
  default = "Z100663530MNTX07G8NYH"
}

variable "domain_name" {
  default = "devopskk.online"
}