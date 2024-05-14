#when something is getting repeated in a resource, then we can use dynamic block
resource "aws_security_group" "allow-ports" {
    name = "allow-ports"
    description = "Allowing ports for 22,80,8080,3306"

#below is terraform block as there is no equalto 
    dynamic "ingress" {
        for_each = var.multiple-ports
        content {
            from_port        = ingress.value["port"]
            to_port          = ingress.value["port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["cidr_blocks"]
        } 
  }

    egress {
    from_port        = 0  ## 0 to 0 opening all protocals
    to_port          = 0
    protocol         = "-1" #-1 all protocals
    cidr_blocks      = ["0.0.0.0/0"]
  }

#below is terraform map as there is equalto,also list means [1, 2, 3, 4]
    tags = { 
        Name = "allow-ssh"
        createdby = "Krishna"
    }
}
