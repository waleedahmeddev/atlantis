provider "aws" {
  region  = "ap-southeast-1"
  profile = "dev_work"
}

resource "aws_security_group" "sg" {
  name        = "all-ports-tf"
  description = "Allow all ports, just for testing"
  vpc_id      = "vpc-c64808a2"

  ingress {
    description = "Allowing all ports"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "all-ports-tf"
  }

}
