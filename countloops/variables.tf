variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_names" {
  type = list
  default = ["mongodb","redis","web","mysql","shipping","cart","user","rabbitmq","payment","dispatch","catalogue"]
}

variable "zone_id" {
  type = string
  default = "Z015866725GKGKSNADT5C"
}

variable "domain_name" {
  type = string
  default = "mvaws.online"
}

