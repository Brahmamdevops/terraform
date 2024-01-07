resource "aws_instance" "server" {
  #count = 11 # create four similar EC2 instances its a special variable
  count = length(var.instance_names) # it will give length of list like 11
  ami           = var.ami_id # devops practice
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "shipping" || var.instance_names[count.index] == "mysql" ? "t3.micro" : "t2.micro"

  tags = {
    Name =  var.instance_names[count.index]
  }
}


resource "aws_route53_record" "www" {
  # count = 11
  count = length(var.instance_names) 

  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}" # interpolation
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.server[count.index].public_ip : aws_instance.server[count.index].private_ip]
}