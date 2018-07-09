module "main" {
  source                  = "git::https://github.com/asteranup/terraformaws.git" #../
  aws_profile             = "StudyProfile"
  aws_region              = "ap-south-1"
  aws_environment         = "testenv"
  aws_ami_ec2             = "ami-206a414f"
  aws_ami_type            = "t2.micro"
  aws_key_name            = "key-mumbai-ap-south-1"
  shared_credentials_file = "C:/AWS/study/credentials"
}
