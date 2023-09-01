#creation route table
resource "aws_route_table" "route" {
  vpc_id = aws_vpc.demovpc.id
  tags = {
    Name = "Route to internet"
  }
}
#Associating Route tables
resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.route.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.demogateway.id
}
resource "aws_route_table_association" "rt1" {
  subnet_id      = aws_subnet.publicsubnet-1.id
  route_table_id = aws_route_table.route.id
}
resource "aws_route_table_association" "rt2" {
  subnet_id      = aws_subnet.publicsubnet-2.id
  route_table_id = aws_route_table.route.id
}
resource "aws_route_table_association" "rt3" {
  subnet_id      = aws_subnet.database-subnet-1.id
  route_table_id = aws_route_table.route.id
}
resource "aws_route_table_association" "rt4" {
  subnet_id      = aws_subnet.database-subnet-2.id
  route_table_id = aws_route_table.route.id
}
