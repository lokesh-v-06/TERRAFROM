#creating database security group
resource "aws_security_group" "database-sg" {
  name   = "databaseSG"
  vpc_id = aws_vpc.demovpc.id
  ingress {
    description     = "Allow traffic from application layer"
    from_port       = 3306
    to_port         = 3306
    protocol        = "TCP"
    security_groups = [aws_security_group.demosg.id]
  }
  egress {
    from_port   = 32768
    to_port     = 65535
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "database SG"
  }
}

