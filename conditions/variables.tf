variable "image_id" {
  type = string #optional
  default = "ami-090252cbe067a9e58" #optional
  description = "RHEL 9 instances"  #optional
}

variable "instance_name" {
  default = "frontend"
}
