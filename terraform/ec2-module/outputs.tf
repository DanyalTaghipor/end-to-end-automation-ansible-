output "ami_info_id" {
  description = "The ID of AMI"
  value       = local.ami_id
}

output "aws_instance_public_ip" {
  description = "The Public IP of Instance"
  value       = local.ssh_user
}
