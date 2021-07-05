output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.testInstance.id
}

output "instance1_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.testInstance.public_ip
}

output "instance1_public_dns" {
  description = "Public DNS address of the EC2 instance"
  value       = aws_instance.testInstance.public_dns
}

output "instance1_tag" {
  description = "instnace tag"
  value       = aws_instance.testInstance.tags
}


output "instance2_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.testInstance2.id
}

output "instance2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.testInstance2.public_ip
}

output "instance2_public_dns" {
  description = "Public DNS address of the EC2 instance"
  value       = aws_instance.testInstance2.public_dns
}

output "instance2_tag" {
  description = "instnace tag"
  value       = aws_instance.testInstance2.tags
}

