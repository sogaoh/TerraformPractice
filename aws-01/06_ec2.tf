resource "aws_key_pair" "auth" {
  key_name = "${var.key_name}"
  public_key = "${file(var.public_key_path)}"
}

resource "aws_instance" "bastion-01" {
  ami = "ami-08847abae18baa040" // Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "${var.instance_type_bastion}"
  subnet_id = "${aws_subnet.public.id}"
  private_ip = "10.1.1.10"
  associate_public_ip_address = true
  vpc_security_group_ids = [
    "${aws_vpc.main.default_security_group_id}",
    "${aws_security_group.front-sg.id}"
  ]
  key_name = "${aws_key_pair.auth.id}"

  tags {
    Name = "bastion-01"
  }
}

resource "aws_instance" "stns-01" {
  ami = "ami-08847abae18baa040" // Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "${var.instance_type_stns}"
  subnet_id = "${aws_subnet.private.id}"
  associate_public_ip_address = false
  private_ip = "10.1.2.10"
  vpc_security_group_ids = [
    "${aws_vpc.main.default_security_group_id}",
    "${aws_security_group.back-sg.id}"
  ]
  key_name = "${aws_key_pair.auth.id}"

  tags {
    Name = "stns-01"
  }
}
