resource "aws_vpc" "main" {
  cidr_block = "10.1.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags {
    Name = "vpc-myaws-01"
  }
}

resource "aws_subnet" "public" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.1.1.0/24"
  availability_zone = "ap-northeast-1d"

  tags {
    Name = "public-subnet-myaws-01"
  }
}

resource "aws_subnet" "private" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.1.2.0/24"
  availability_zone = "ap-northeast-1d"

  tags {
    Name = "private-subnet-myaws-01"
  }
}

