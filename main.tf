provider "aws" {
  region = "us-east-1"
  profile = "default"
}
resource "aws_instance" "despliegue-terraform-ec2" {
  ami		= "ami-06e2b3882a1e987b7"
  instance_type = "t2.micro"
  key_name	= "ssh-aws"
  vpc_security_group_ids = ["sg-0c1342408a815dcec"]
  tags = {
    Name	= "Instance_test_terraform"
    terraform   = "True"

  }
}