resource "aws_instance" "morays_app" {
  ami           = "ami-06cdac14c9c4da91b"
  instance_type = "t3.micro"
  key_name      = "olu1"


  tags = {
    Name        = "morays-app"
    Environment = "Dev"
  }
}
