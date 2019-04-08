variable "myhome_gip" {} 

variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "key_name" {
  description = "the name of aws key pair"
}

variable "public_key_path" {
  description = "path to the ssh public key"
}


variable "aws_zone_d" {
  default = "ap-northeast-1d"
}


variable "instance_type_bastion" {
  default = "t2.micro"
}

variable "instance_type_stns" {
  default = "t2.micro"
}

