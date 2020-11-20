output "aws_instance_private_ip" {
  description = "Prints EC2 Private IP."
  value       = aws_instance.myec2.private_ip
}

output "aws_instance_id" {
  description = "Prints EC2 ID."
  value       = aws_instance.myec2.id
}

output "aws_instance_availability_zone" {
  description = "Prints EC2 Availability Zone"
  value       = aws_instance.myec2.availability_zone
}

output "aws_ebs_volume_id" {
  description = "Prints EBS Volume id."
  value       = aws_ebs_volume.myebs.id
}