provider "aws" {
  region = "us-east-1"  # Change to your AWS region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (Update this)
  instance_type = "t2.micro"

  tags = {
    Name = "GitHubActionsEC2"
  }
}
