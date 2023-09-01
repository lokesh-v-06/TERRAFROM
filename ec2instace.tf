#creating 1st EC2 instance
resource "aws_instance" "demoinstance1" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t2.micro"
  key_name                    = "bmw"
  vpc_security_group_ids      = [aws_security_group.demosg.id]
  subnet_id                   = aws_subnet.publicsubnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "My public insatance1"
  }
}
#creating 2nd ec2 instance in public subnet
resource "aws_instance" "demoinstance2" {
  ami                    = "ami-053b0d53c279acc90"
  instance_type          = "t2.micro"
  key_name               = "bmw"
  vpc_security_group_ids = [aws_security_group.demosg.id]
  subnet_id              = aws_subnet.publicsubnet-2.id
  user_data              = file("data.sh")
  tags = {
    Name = "my public instance2"
  }
}
