
resource "aws_instance" "db" {

  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = [ aws_security_group.allow-ssh.id ]
  instance_type = "t2.micro"
  
  tags = {
    Name = "db"
  }
}

resource "aws_security_group" "allow-ssh" {
    name = "allow-ssh"
    description = "Allow ssh inbound traffic and all outbound traffic"

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    egress {
    from_port        = 0  ## 0 to 0 opening all protocals
    to_port          = 0
    protocol         = "-1" #-1 all protocals
    cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = { 
        Name = "allow-ssh"
        createdby = "Krishna"
    }
}