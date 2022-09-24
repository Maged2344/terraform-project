#elastic ip
resource "aws_eip" "lb" {

}

resource "aws_nat_gateway" "nategateway" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.gateway]
}

