resource "aws_security_group" "mysg" {
  name        = "my_sg"
  description = "this is my sg"
  vpc_id      = "vpc-e9532f90"

  ingress {
    description = "SSH From my ip"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["67.173.153.202/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mysg"
  }

}

output "sg_id" {
  value = aws_security_group.mysg.id
}
