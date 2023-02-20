#PUBLIC SUBNET 1 


resource "aws_subnet" "public-subnet1" {
  vpc_id     = "vpc-03d9ccf4e799b7a9f"
  cidr_block = "192.168.4.0/26"
  availability_zone = "us-east-1a"
 

  tags = {
    Name = "omshree-butani-public-subnet-1"
  }
}
resource "aws_route_table_association" "public-rt4-association" {
  
    subnet_id = "subnet-0883799fb33f4bb83" 
    route_table_id = "rtb-06b3ae524188b633d"
}


#PUBLIC SUBNET 2 


resource "aws_subnet" "public-subnet2" {
  vpc_id     = "vpc-03d9ccf4e799b7a9f"
  cidr_block = "192.168.4.64/26"
  availability_zone = "us-east-1a"
 

  tags = {
    Name = "omshree-butani-public-subnet-2"
  }


}
resource "aws_route_table_association" "public-rt1-association" {
  
    subnet_id = "subnet-0570131ba93302615" 
    route_table_id = "rtb-06b3ae524188b633d"
}


#PRIVATE SUBNET 1

resource "aws_subnet" "private_subnet1" {
  vpc_id     = "vpc-03d9ccf4e799b7a9f"
  cidr_block = "192.168.1.128/26"
  availability_zone = "us-east-1a" 


    tags = {
      Name = "omshree-butani-private-subnet-1"
  }
  
}

resource "aws_route_table_association" "public-rt2-association" {
  
    subnet_id = "	subnet-01f6575f3d2204969" 
    route_table_id = "rtb-0991bfac48d25a538"
}



#PRIVATE SUBNET 2

resource "aws_subnet" "private_subnet2" {
  vpc_id     = "vpc-03d9ccf4e799b7a9f"
  cidr_block = "192.168.4.192/26"
  availability_zone = "us-east-1b" 


    tags = {
      Name = "omshree-butani-private-subnet-2"
  }
  
}

resource "aws_route_table_association" "public-rt3-association" {
  
    subnet_id = "subnet-0d615c6cd3453f987" 
    route_table_id = "rtb-0991bfac48d25a538"
}

