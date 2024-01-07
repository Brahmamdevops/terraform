variable "ami" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Hello Terraform"
        Project = "Roboshop"
        Env= "Dev"
        component= "web"
        Terraform= true
    }
}

variable "sg-name" {
  type = string
  default = "basic-security-aws"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
  type = number
  default = 0
}

variable "cidr-block" {
  type = list
  default = ["0.0.0.0/0"]
}