
#================ Public Subnet ================

resource "aws_subnet" "public-subnet-1" {
  vpc_id            = "vpc-3faf9a57"
  availability_zone = "ap-south-1a"
  cidr_block        = "172.31.11.0/16"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-terraform-subnet-1"
  }
}

output "out_public-subnet-1_id" {
  value = "${aws_subnet.public-subnet-1.id}"
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id            = "vpc-3faf9a57"
  availability_zone = "ap-south-1b"
  cidr_block        = "172.31.12.0/16"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-terraform-subnet-2"
  }
}

output "out_public-subnet-2_id" {
  value = "${aws_subnet.public-subnet-2.id}"
}

#================ Private Subnet ================

resource "aws_subnet" "private-subnet-1" {
  vpc_id            = "vpc-3faf9a57"
  availability_zone = "ap-south-1a"
  cidr_block        = "172.31.13.0/16"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "private-terraform-subnet-1"
  }
}

output "out_private-subnet-1_id" {
  value = "${aws_subnet.private-subnet-1.id}"
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = "vpc-3faf9a57"
  availability_zone = "ap-south-1b"
  cidr_block        = "172.31.14.0/16"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "private-terraform-subnet-2"
  }
}

output "out_private-subnet-2_id" {
  value = "${aws_subnet.private-subnet-2.id}"
}
