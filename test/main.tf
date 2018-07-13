module "main" {
  source                  = "git::https://github.com/asteranup/terraformaws.git" #"../"
  aws_profile             = "StudyProfile"
  aws_region              = "ap-south-1"
  aws_environment         = "testenv"
  aws_key_name            = "key-mumbai-ap-south-1"
  shared_credentials_file = "C:/AWS/study/credentials"
}
