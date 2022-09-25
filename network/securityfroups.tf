resource "aws_security_group" "allow_ssh" {
  
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  
  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_ssh_3000" {
  
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description      = "ssh , 3000 from VPC"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.myvpc.cidr_block]
    }


  tags = {
    Name = "allow_ssh_3000"
  }
}