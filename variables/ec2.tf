#1. preference = command line
#2. tfvars
#3. environment variable = export -----
#4. default variables 
resource "aws_instance" "db" {

  ami = var.image_id
  vpc_security_group_ids = [ aws_security_group.allow-ssh.id ]
  instance_type = var.instance_type
  
  tags = var.tags_Expense
  #key = #value
}

resource "aws_security_group" "allow-ssh" {
    name = var.sg_ssh
    description = var.description

    ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

    egress {
    from_port        = 0  ## 0 to 0 opening all protocals
    to_port          = 0
    protocol         = "-1" #-1 all protocals
    cidr_blocks      = var.cidr
  }

    tags = { 
        Name = "allow-ssh"
        created_by = "Krishna"
    }
}