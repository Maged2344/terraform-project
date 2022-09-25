output vpc_module_id {
  value       = aws_vpc.myvpc.id
}

output aws_security_group1 {
  value = aws_security_group.allow_ssh.id
}
output aws_security_group2 {
  value = aws_security_group.allow_ssh_3000.id
}

output aws_subnet_public1 {
  value = aws_subnet.public_1.id
}

output aws_subnet_public2 {
  value = aws_subnet.public_2.id
}

output aws_subnet_private1 {
  value = aws_subnet.private_1.id
}

output aws_subnet_private2 {
  value = aws_subnet.private_2.id
}