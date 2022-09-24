resource "aws_route_table" "routetable-public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }
  tags = {
    Name = "routetable public"
  }
}

# resource "aws_route" "r" {
#   route_table_id            = aws_route_table.routetable-public.id
#   destination_cidr_block    = "0.0.0.0/0"
#   gateway_id = aws_internet_gateway.gateway.id
# }



# ROUTE TABLE first public subnet
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.routetable-public.id
}
# ROUTE TABLE second public subnet
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.routetable-public.id
}

resource "aws_route_table" "routetable-private" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nategateway.id
  }
  tags = {
    Name = "routetable private"
  }
}


# ROUTE TABLE first private subnet
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.routetable-private.id
}
# ROUTE TABLE second private subnet
resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.routetable-private.id
}
