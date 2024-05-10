variable "image_id" {
  type = string #optional
  default = "ami-090252cbe067a9e58" #optional
  description = "RHEL 9 instances"  #optional
}

variable "instance_type" {
  type = string #optional
  default = "t2.micro" 
  description = "RHEL 9 instances"  #optional
}

variable "tags_Expense" {
    default =  {
        project = "Expense"
        Name = "db"
        Environment = "dev"
    }  
}

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
