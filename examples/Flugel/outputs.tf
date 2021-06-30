output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.instance1.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.instance1.public_ip
}

output "instance_public_dns" {
  description = "Public DNS address of the EC2 instance"
  value       = aws_instance.instance1.public_dns
}

output "instance_tag" {
  description = "instnace tag"
  value       = aws_instance.instance1.tags
}

#output "s3_tag" {
#  description = "S3 tag"
#  value       = aws_s3_bucket.instance1.tags
#}