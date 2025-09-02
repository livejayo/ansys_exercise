output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.my_vpc.id
}

output "web_server_public_ip" {
  description = "The public IP address of the web server."
  value       = aws_instance.web_server.public_ip
}

output "public_subnet_ids" {
  description = "List of public subnet IDs."
  value       = aws_subnet.public_subnets[*].id
}
