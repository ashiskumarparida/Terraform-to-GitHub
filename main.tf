resource "aws_instance" "ec2" {
  ami           = "ami-079b5e5b3971bd10d "
  instance_type = "t2.micro"
  subnet_id     = "subnet id -09057160738ffdd97"
  tags = {
    Name = "Hello"
  }
}
