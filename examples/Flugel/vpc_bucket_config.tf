resource "aws_vpc" "flugel" {
  cidr_block       = "172.16.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Flugel"
    Owner = "InfraTeam"
  }
}

resource "aws_subnet" "flugel" {
  vpc_id            = aws_vpc.flugel.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Flugel"
    Owner = "InfraTeam"
  }
}

resource "aws_network_interface" "flugel" {
  subnet_id   = aws_subnet.flugel.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_security_group" "flugel" {
  vpc_id = aws_vpc.flugel.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_internet_gateway" "gwflugel" {
  vpc_id = aws_vpc.flugel.id

  tags = {
    Name = "flugel"
  }
}
