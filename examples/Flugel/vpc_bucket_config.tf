resource "aws_vpc" "flugel" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Flugel"
    Owner = "InfraTeam"
  }
}