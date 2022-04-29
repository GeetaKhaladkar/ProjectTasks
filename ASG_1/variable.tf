

variable "aws_region" {

  default = "ap-south-1"
  description = "AWS region:ap-south-1"
  type = string
}


variable "ami" {

    default = "ami-0a3277ffce9146b74"
    description = "EC2 instance AMI"
    type = string
}

variable "instance_type" {

    default = "t2.micro"
    description = "EC2 instance type"
    type = string
}


variable "key_name" {

  default = "Terraform"
  description = "key name:Terraform"
  type = string
}

variable "vpc_cidr" {

    default = "10.0.0.0/16"
    description = "vpc cidr block"
    type = string
}


variable "subnets_cidr_a" {

    default = "10.0.0.0/24"
    description = "subnet cidr block  "
    type = string

}


variable "subnets_cidr_b" {

    default = "10.0.1.0/24"
    description = "subnet cidr block  "
    type = string

}




variable "azs_a" {

    default = "ap-south-1a"
    description = "availability zone  "
    type = string
}

variable "azs_b" {

    default = "ap-south-1b"
    description = "availability zone  "
    type = string
}


