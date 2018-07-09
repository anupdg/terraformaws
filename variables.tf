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
  default     = "bamboo"
}

variable "aws_ami_bamboo_server" {
  description = "AWS AMI for bamboo server"
  default     = "ami-cb126d21"
}

variable "aws_ami_bamboo_agent" {
  description = "AWS AMI for bamboo agent"
  default     = "ami-3dd5d641"
}

variable "aws_ami_windows_small" {
  description = "AWS AMI instance small"
  default     = "t2.small"
}

variable "aws_ami_windows_medium" {
  description = "AWS AMI instance medium"
  default     = "t2.medium"
}

variable "aws_windows_key_name" {
  description = "Key name"
  default     = "key-singapore-ap-southeast-1a"
}
