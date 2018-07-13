variable "aws_profile" {
  description = "AWS profile"
}

variable "aws_region" {
  description = "AWS region"
}

variable "aws_environment" {
  description = "AWS environment name"
}

variable "aws_ami_ec2" {
  description = "AWS AMI for EC2 instance"
}

variable "aws_key_name" {
  description = "Instance key pair name"
}

variable "shared_credentials_file" {
  description = "AWS credential file location"
}
