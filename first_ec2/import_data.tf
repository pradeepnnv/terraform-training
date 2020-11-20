data "terraform_remote_state" "ec2" {
  backend = "local"
  config = {
    path     = "terraform.tfstate"
  }  
}