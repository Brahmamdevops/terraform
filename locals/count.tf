resource "aws_instance" "server" {
  ami = var.ami_id
  instance_type = local.instance_type

  tags={
    name="locals"
  }
}