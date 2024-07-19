output "instance_public_ips" {
  description = "The public IPs of the EC2 instances"
  value       = [for instance in aws_instance.ec2_instance : instance.public_ip]
}
