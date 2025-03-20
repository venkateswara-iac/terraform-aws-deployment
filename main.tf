resource "aws_instance" "ven_gitaction_ec2" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  key_name      = "VENSNR01"
  subnet_id     = "subnet-0df27e373d7a852bc"
  vpc_security_group_ids = ["sg-0e5cf05ab17abc5cf"]

  tags = {
    Name = "GitHub-ven-Actions-EC2"
  }
}

