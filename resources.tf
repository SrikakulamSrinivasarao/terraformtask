resource "aws_instance" "my_instance" {
  ami           = "ami-0d473344347276854"
  instance_type = "t2.micro"
  key_name      = "Srinu09102002"
  tags = {
    Name = "MyInstance"
  }
  security_groups = [aws_security_group.example_sg.name]
  user_data       = file("sample.sh")
}

