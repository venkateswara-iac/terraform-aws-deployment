provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ven_gitaction_ec2" {
  ami           = "ami-00bb6a80f01f03502"  # Ubuntu Server 24.04 LTS
  instance_type = "t2.micro"
  key_name      = "VENSNR01"  # Replace with your actual key pair name
  subnet_id     = "subnet-0df27e373d7a852bc"  # Replace with your actual subnet ID
  vpc_security_group_ids = ["sg-0e5cf05ab17abc5cf"]  # Replace with your security group ID

  tags = {
    Name = "GitHub-Actions-EC2"
  }
}
