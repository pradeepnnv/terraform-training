resource "aws_ebs_volume" "myebs" {
  availability_zone = data.terraform_remote_state.ec2.outputs.aws_instance_availability_zone
  size              = 1

  tags = {
    Name = "HelloWorld"
  }
}