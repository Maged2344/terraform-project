# first public subnet
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet1
  availability_zone       = "us-east-1a" 
  map_public_ip_on_launch = true
  tags = {
    Name = "1_public_subnet"
  }
}

# second public subnet
resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet2
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "2_public_subnet"
  }
}

# first private subnet
resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet3
  availability_zone = "us-east-1a"
  tags = {
    Name = "1_private_subnet"
  }
}

# second private subnet
resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet4
  availability_zone = "us-east-1b"
  tags = {
    Name = "2_private_subnet"
  }
}

