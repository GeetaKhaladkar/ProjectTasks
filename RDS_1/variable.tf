

variable "aws_region" {

  default = "ap-south-1"
  description = "AWS region:ap-south-1"
  type = string
}

variable "instance_class" {

    default = "t2.micro"
    description = "EC2 instance type"
    type = string
}


variable "instance_port" {

    default = "3306"
    description = "EC2 instance port"
    type = string
}

variable "db_engine" {

    default = "mysql"
    description = "database engine"
    type = string
}

variable "db_engine_version" {

    default = "8.0"
    description = "mysql version"
    type = string
}

variable "db_identifier" {

    default = "mysqldatabase"
    description = "mysql database"
    type = string
}

variable "db_storage_type" {

    default = "gp2"
    description = "general purpose"
    type = string
}

variable "db_storage" {

    default = "20"
    description = "database storage"
    type = string
}

variable "db_subnet_group" {

    default = "default-vpc-20b2494b"
    description = "RDS subnet group"
    type = string
}

variable "db_subnet_group_name" {

    default = "demo_rds_123"
    description = "RDS subnet group name"
    type = string
}

variable "db_parameter_group_name" {

    default = "default.mysql8.0"
    description = "RDS parameter group name"
    type = string
}


variable "azs" {

    default = "ap-south-1a"
    description = "availability zone  "
    type = string
}

