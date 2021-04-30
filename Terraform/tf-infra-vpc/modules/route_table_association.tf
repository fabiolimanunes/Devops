resource "aws_route_table_association" "route-table" {
  subnet_id      = aws_subnet.subnet-public-01.id
  route_table_id = aws_route_table.route-name-public.id
}

resource "aws_route_table_association" "route-table-01" {
  subnet_id      = aws_subnet.subnet-public-02.id
  route_table_id = aws_route_table.route-name-public.id
}

resource "aws_route_table_association" "route-table-02" {
  subnet_id      = aws_subnet.subnet-private-03.id
  route_table_id = aws_route_table.route-name-private.id
}

resource "aws_route_table_association" "route-table-03" {
  subnet_id      = aws_subnet.subnet-private-04.id
  route_table_id = aws_route_table.route-name-private.id
}
