output "instance_ids" {
  value = {
    for instance in aws_instance.ec2_instance : instance.tags["Name"] => instance.id
  }
  description = "Map of instance names to their corresponding IDs."
}

output "instance_public_ips" {
  value = {
    for instance in aws_instance.ec2_instance : instance.tags["Name"] => instance.public_ip
  }
  description = "Map of instance names to their public IPs."
}

output "instance_private_ips" {
  value = {
    for instance in aws_instance.ec2_instance : instance.tags["Name"] => instance.private_ip
  }
  description = "Map of instance names to their private IPs."
}
