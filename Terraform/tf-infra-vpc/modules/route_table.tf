resource "aws_route_table" "route-name-public" {
  vpc_id = aws_vpc.name.id

  route {
    cidr_block = var.cidr_block_route
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route-public-name"
  }
}

resource "aws_route_table" "route-name-private" {
  vpc_id = aws_vpc.name.id

  route {
    cidr_block = var.cidr_block_route
    gateway_id = aws_nat_gateway.gw.id
  }

  tags = {
    Name = "route-private-name"
  }
}
