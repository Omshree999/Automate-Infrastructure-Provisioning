#PUBLIC ROUTE TABLE

resource "aws_route_table" "public_route_table" {
  vpc_id = "vpc-03d9ccf4e799b7a9f"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-086c6322d962b4064"
  }

  tags = {
      Name = "omshree-butani-public-route-table"
  }
}




#PRIVATE ROUTE TABLE


resource "aws_route_table" "private_route_table" {
  vpc_id = "vpc-03d9ccf4e799b7a9f"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-03697f23ac4287915"
    
    
}

tags = {
      Name = "omshree-butani-private-route-table"
    }
}