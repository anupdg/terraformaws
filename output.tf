output "private_subnet_id" {
  description = "Private subnet id"
  value       = "${aws_subnet.private_subnet.id}"
}

output "public_subnet_id" {
  description = "public subnet id"
  value       = "${aws_subnet.public_subnet.id}"
}

output "private_security_group_id" {
  description = "Private security group id"
  value       = "${aws_security_group.private_sg.id}"
}

output "public_security_group_id" {
  description = "public security group id"
  value       = "${aws_security_group.public_sg.id}"
}
