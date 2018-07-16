output "private_subnet_id" {
  description = "Private subnet id"
  value       = "${module.main.private_subnet_id}"
}

output "public_subnet_id" {
  description = "public subnet id"
  value       = "${module.main.public_subnet_id}"
}

output "private_security_group_id" {
  description = "Private security group id"
  value       = "${module.main.private_security_group_id}"
}

output "public_security_group_id" {
  description = "public security group id"
  value       = "${module.main.public_security_group_id}"
}

output "vpc_id" {
  description = "VPC id"
  value       = "${module.main.vpc_id}"
}
