resource "aws_security_group" "front-sg" {
  name = "front-sg"
  description = "front-sg security group"
  vpc_id = "${aws_vpc.main.id}"

  ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["10.1.0.0/16","${var.myhome_gip}"]
  }

  ingress{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress{
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress{
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["10.1.0.0/16"]
  }

  tags{
    Name = "front-sg"
  }
}

resource "aws_security_group" "back-sg" {
  name = "back-sg"
  description = "back-sg security group"
  vpc_id = "${aws_vpc.main.id}"

  ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }

  ingress{
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }

  ingress{
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }

  ingress{
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["10.1.0.0/16"]
  }

  tags{
    Name = "back-sg"
  }
}
