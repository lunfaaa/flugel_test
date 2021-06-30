resource "tls_private_key" "flugelkey" {
  algorithm = "RSA"
}

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "flugelkey"
  public_key = tls_private_key.flugelkey.public_key_openssh
}