resource "aws_instance" "Flugel" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  tags = {
    Name = "Flugel"
    Owner = "InfraTeam"
  }
}
