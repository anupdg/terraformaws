variable "aws_profile" {
  description = "AWS profile"
  default     = "StudyProfile"
}

variable "aws_region" {
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "aws_environment" {
  description = "AWS environment name"
  default     = "main"
}

variable "aws_ami_ec2" {
  description = "AWS AMI for EC2 instance"
  default     = "ami-cb126d21"
}

variable "aws_ami_type" {
  description = "AWS AMI instance type"
  default     = "t2.small"
}

variable "aws_key_name" {
  description = "Instance key pair name"
  default     = "key-singapore-ap-southeast-1a"
}
