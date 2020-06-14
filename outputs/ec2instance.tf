resource aws_instance myec2instance {
  ami = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.mysg.id]
}
