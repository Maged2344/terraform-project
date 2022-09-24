resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "main gateway"
  }
}
