#creating 1st web subnet
resource "aws_subnet" "publicsubnet-1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    Name = "websubnet-1"
  }
}
#creating 2nd web subnet
resource "aws_subnet" "publicsubnet-2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = {
    Name = "websubnet-2"
  }
}
#creating 1st database subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "database-2"
  }
}
#creating 2nd web subnet
resource "aws_subnet" "database-subnet-2" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "database-2"
  }
}
