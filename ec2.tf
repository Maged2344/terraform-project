resource "aws_instance" "bastion" {
  ami             = "ami-026b57f3c383c2eec"
  instance_type   = "t2.micro"
  subnet_id       = module.iti_network.aws_subnet_public1
  security_groups = [module.iti_network.aws_security_group1]

  tags = {
    Name = "bastion"
  }
}


resource "aws_instance" "application" {
  ami             = "ami-026b57f3c383c2eec"
  instance_type   = "t2.micro"
   subnet_id       = module.iti_network.aws_subnet_public2
  security_groups = [module.iti_network.aws_security_group2]
 
  tags = {
    Name = "application"
  }
}