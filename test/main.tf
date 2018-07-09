module "main" {
  source          = "git::https://github.com/asteranup/terraformaws.git" #../
  aws_profile     = "StudyProfile"
  aws_region      = "ap-south-1"
  aws_environment = "testenv"
  aws_ami_ec2     = "ami-3dd5d641"
  aws_ami_type    = "t2.micro"
  aws_key_name    = "key-singapore-ap-southeast-1a"
}
