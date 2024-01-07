
resource "aws_security_group" "basic-security" {
  name        = var.sg-name
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0 # it means all
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr-block
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr-block
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.sg-name
  }
}