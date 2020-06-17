module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-09d95fab7fff3776c"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-e2ffe193"]
  subnet_id              = "subnet-9cf0e7a0"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
