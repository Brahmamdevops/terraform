resource "aws_instance" "web" {
  count= 4
  ami           = var.ami_id
  instance_type = var.instance_names == "mongodb" ? " t2.micro" : "t2.small"
  
}