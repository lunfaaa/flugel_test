resource "aws_instance" "Flugel" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  #vpc_security_group_ids = ["${aws_vpc.flugel.id}"]
  security_groups        = ["${aws_security_group.flugel.id}"]
  subnet_id              = "${aws_subnet.flugel.id}"
  tags = {
    Name = "Flugel-instance1"
    Owner = "InfraTeam"
  }
}

resource "aws_instance" "Flugel1" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  #vpc_security_group_ids = ["${aws_vpc.flugel.id}"]
  security_groups        = ["${aws_security_group.flugel.id}"]
  subnet_id              = "${aws_subnet.flugel.id}"
  tags = {
    Name = "Flugel-instance2"
    Owner = "InfraTeam"
  }
}