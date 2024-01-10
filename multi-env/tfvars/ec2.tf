resource "aws_instance" "server" {
  for_each = var.instance_names
  ami           = data.aws_ami.centos8.id # devops practice
  instance_type = each.value 
  tags = {
    Name =  each.key
  }
}


resource "aws_route53_record" "www" {
  for_each = aws_instance.server

  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" # interpolation
  type    = "A"
  ttl     = 1
  records = [startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip]
}