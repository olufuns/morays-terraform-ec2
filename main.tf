resource "aws_instance" "morays_app" {
  ami           = "ami-06cdac14c9c4da91b"
  instance_type = "t3.micro"
  key_name      = "olu1"
  vpc_security_group_ids = [aws_security_group.morays_app_sg.id]
  user_data = filebase64("userdata.sh")


  tags = {
    Name        = "morays-app"
    Environment = "Dev"
  }
}
