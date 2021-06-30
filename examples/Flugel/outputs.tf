output "instance_id_instance1" {
  description = "ID of the EC2 instance"
  value       = aws_instance.Flugel.id
}

output "instance_public_ip_instance1" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.Flugel.public_ip
}

output "instance_public_dns_instance1" {
  description = "Public DNS address of the EC2 instance"
  value       = aws_instance.Flugel.public_dns
}

output "instance_tag_instance1" {
  description = "instnace tag"
  value       = aws_instance.Flugel.tags
}

output "instance_id_instance2" {
  description = "ID of the EC2 instance"
  value       = aws_instance.Flugel1.id
}

output "instance_public_ip_instance2" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.Flugel1.public_ip
}

output "instance_public_dns_instance2" {
  description = "Public DNS address of the EC2 instance"
  value       = aws_instance.Flugel1.public_dns
}

output "instance_tag_instance2" {
  description = "instnace tag"
  value       = aws_instance.Flugel1.tags
}