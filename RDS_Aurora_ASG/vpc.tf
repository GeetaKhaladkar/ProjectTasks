resource "aws_vpc" "my_vpc" {
  cidr_block       = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags = {
    Name = "My VPC"
  }
}


resource "aws_internet_gateway" "my_vpc_igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "My VPC - Internet Gateway"
  }
}



resource "aws_subnet" "my_public_subnet_1"  {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "${var.public-subnet-1-cidr}"
  availability_zone = var.azs_public
  tags = {
    Name = "MY-PUBLIC-SUBNET-1"
  }
}

resource "aws_subnet" "my_public_subnet_2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "${var.public-subnet-2-cidr}"
  availability_zone = var.azs_private
  tags = {
    Name = "MY-PUBLIC-SUBNET-2"
  }
}

resource "aws_subnet" "my_public_subnet_3" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "${var.public-subnet-3-cidr}"
  availability_zone = var.azs_subnet3
  tags = {
    Name = "MY-PUBLIC-SUBNET-3"
  }
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_vpc_igw.id
  }
  tags = {
    Name = "MY-PUBLIC-RT"
  }
}

resource "aws_route_table_association" "public-subnet-1-rt-association" {
    subnet_id = aws_subnet.my_public_subnet_1.id
    route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public-subnet-2-rt-association" {
    subnet_id = aws_subnet.my_public_subnet_2.id
    route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public-subnet-3-rt-association" {
    subnet_id = aws_subnet.my_public_subnet_3.id
    route_table_id = aws_route_table.public-rt.id
}


resource "aws_subnet"  "my_private_subnet_1"  {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.private-subnet-1-cidr}"
    availability_zone = var.azs_public
    map_public_ip_on_launch = false
    tags = {
      "Name" = "MY-PRIVATE-SUBNET-1"
    }
}

resource "aws_subnet" "my_private_subnet_2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.private-subnet-2-cidr}"
    availability_zone = var.azs_private
    map_public_ip_on_launch = false
    tags = {
      "Name" = "MY-PRIVATE-SUBNET-2"
    }
}


resource "aws_subnet" "my_private_subnet_3" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.private-subnet-3-cidr}"
    availability_zone = var.azs_subnet3
    map_public_ip_on_launch = false
    tags = {
      "Name" = "MY-PRIVATE-SUBNET-3"
    }
}



resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_vpc_igw.id
  }
  tags = {
    Name = "MY-PRIVATE-RT"
  }
}
resource "aws_route_table_association" "private-Subnet-1-rt-association" {
    subnet_id = aws_subnet.my_private_subnet_1.id
    route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "Public-Subnet-2-RT-Association" {
    subnet_id = aws_subnet.my_private_subnet_2.id
    route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "Public-Subnet-3-RT-Association" {
    subnet_id = aws_subnet.my_private_subnet_3.id
    route_table_id = aws_route_table.private-rt.id
}
