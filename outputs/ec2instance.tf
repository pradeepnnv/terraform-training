resource aws_instance myec2instance {
  ami                    = var.ami
  instance_type          = var.instancetype
  vpc_security_group_ids = [aws_security_group.mysg.id]
}
