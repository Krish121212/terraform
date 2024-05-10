variable "image_id" {
  type = string #optional
  default = "ami-090252cbe067a9e58" #optional
  description = "RHEL 9 instances"  #optional
}

variable "instance_type" {
  type = string #optional
  default = "t2.small" 
  description = "RHEL 9 instances"  #optional
}

variable "tags_Expense" {
    default =  {
        project = "Expense"
        Name = "db"
        Environment = "dev"
    }  
}

variable "instance_name" {
  default = "frontend"
}