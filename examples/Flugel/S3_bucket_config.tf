resource "aws_s3_bucket" "flugel" {
  acl    = "private"

  tags = {
    Name = "Flugel"
    Owner = "InfraTeam"
  }
}
