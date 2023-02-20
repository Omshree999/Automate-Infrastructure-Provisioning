#PUBLIC EC2

resource "aws_instance" "web-omshree" {
  ami           = "ami-0aa7d40eeae50c9a9"  
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = "subnet-0883799fb33f4bb83"
  

  vpc_security_group_ids = [aws_security_group.public_sg.id]
  key_name = aws_key_pair.omshree-web-key.key_name

  user_data = file("${path.module}/public_ud.sh")
#   provisioner "remote-exec" {
#     inline = [
#       sudo yum update -y,
#       sudo yum install -y mariadb-server,
#       sudo systemctl start mariadb
#       sudo systemctl enable mariadb
#       sudo mysql_secure_installation
#       sudo amazon-linux-extras install nginx1 -y
#       sudo systemctl enable nginx
#       sudo systemctl start nginx
#     ]
#   }

  tags = {
    Name = "omshree-butani-public-ec2"
    Owner = "omshree.butani@intuitive.cloud"
  }
}


#PRIVATE EC2

resource "aws_instance" "db-omshree" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  associate_public_ip_address = false
  subnet_id = "subnet-01f6575f3d2204969"
  

  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name = aws_key_pair.omshree-db-key.key_name

  user_data = file("${path.module}/private_ud.sh")

#   provisioner "remote-exec" {
#     inline = [
#       "sudo yum install mysql -y",
#       "sudo systemctl start mysql"
#     ]
    
# }

  tags = {
    Name = "omshree-butani-private-ec2"
    Owner = "omshree.butani@intuitive.cloud"
  }
}