resource "aws_instance" "Flugel" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = ["aws_vpc.flugel"]
  tags = {
    Name = "Flugel"
    Owner = "InfraTeam"
  }
}
