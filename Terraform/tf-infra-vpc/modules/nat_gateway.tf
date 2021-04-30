resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.name.id
  subnet_id     = aws_subnet.subnet-private-03.id

  tags = {
    Name = "nat-gateway-name"
  }
}
