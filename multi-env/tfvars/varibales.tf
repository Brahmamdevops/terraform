
variable "instance_names" {
  type = map
  default = {
    mongodb  = "t3.small"
    redis    = "t2.micro"
    web      = "t2.micro"
    mysql    = "t2.micro"
  }
  
  
}

variable "zone_id" {
  type = string
  default = "Z015866725GKGKSNADT5C"
}

variable "domain_name" {
  type = string
  default = "mvaws.online"
}

