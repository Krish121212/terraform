#ec2 variables
variable "image_id" {
  type = string #optional
  default = "ami-090252cbe067a9e58" #optional
  description = "RHEL 9 instances"  #optional
}

variable "instance_names" {
  type = list 
  default = ["db_practice" ,"frontend_practice", "backend_practice"]  #optional
}

variable "tags_Expense" {
    default =  {
        project = "Expense"
        Name = "db_practice"
        Environment = "dev"
    }  
}

#security variables
variable "sg_ssh" {
    default = "allow-ssh"
}

variable "description" {
    default = "Allow ssh inbound traffic and all outbound traffic"
}

variable "to_port" {
    default = 22
    type = number
}

variable "from_port" {
    default = 22
    type = number
}

variable "protocol" {
  default = "tcp"
  type = string
}

variable "cidr" {
  default = ["0.0.0.0/0"]
}

#r53 variables
variable "zone_id" {
  default = "Z100663530MNTX07G8NYH"
}

variable "domain_name" {
  default = "devopskk.online"
}
