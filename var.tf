variable "region" {
  default = "eu-west-3"

}

variable "zone1" {
  default = "eu-west-3a"

}
variable "zone2" {
  default = "eu-west-3b"

}
variable "zone3" {
  default = "eu-west-3c"

}
variable "amis" {
  type = map(any)
  default = {
    eu-central-1 = "ami-03aefa83246f44ef2"
    eu-west-3    = "ami-05e8e219ac7e82eba"

  }

}

variable "user" {
  default = "ubuntu"

}

variable "public_key" {
  default = "mohsenkey.pub"

}

variable "private_key" {
  default = "mohsenkey"

}

variable "MYIP" {
  default = "105.197.250.153/32"

}

variable "rmquser" {
  default = "rabbit"

}

variable "rmqpass" {
  default = "P@ssw0rd11465207"

}

variable "dbuser" {
  default = "admin"

}

variable "dbpass" {
  default = "admin123"

}

variable "dbname" {
  default = "accounts"

}

variable "instancecount" {
  default = "1"

}

variable "vpc_name" {
  default = "vprofile-vpc"

}

variable "vpc_CIDR" {
  default = "172.21.0.0/16"

}

variable "PubSub1CIDR" {
  default = "172.21.1.0/24"
}

variable "PubSub2CIDR" {
  default = "172.21.2.0/24"
}

variable "PubSub3CIDR" {
  default = "172.21.3.0/24"
}

variable "PrivSub1CIDR" {
  default = "172.21.4.0/24"
}

variable "PrivSub2CIDR" {
  default = "172.21.5.0/24"
}

variable "PrivSub3CIDR" {
  default = "172.21.6.0/24"
}
