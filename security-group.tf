#PUBLIC SECURITY GROUP

resource "aws_security_group" "public_sg" {
  name        = "public-security-group-omshree"
  description = "public security group"
  vpc_id      = "vpc-03d9ccf4e799b7a9f"

   
  ingress {
    description      = "http from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  ingress {
    description      = "http from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  ingress {
    description      = "https from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "omshree-butani-public-security_group"
  }
}

#PRIVATE SECURITY GROUP

resource "aws_security_group" "private_sg" {
  name        = "private-security-group-omshree"
  description = "private security group"
  vpc_id      = "vpc-03d9ccf4e799b7a9f"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    security_groups      = [aws_security_group.public_sg.id]
   
  }

  tags = {
    Name = "omshree-butani-private-security_group"
  }
}