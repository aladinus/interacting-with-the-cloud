#define provider
provider "aws" {
 region = "us-east-1"
}

#create an s3 bucket 
resource "aws_s3_bucket" "my_bucket-dev" {
 bucket = "my-bucket-dev-999000" 
 tags = {
  Name    = "bucket-dev"
  Environment = "dev"
 }
}

#create an ec2 instance
resource "aws_instance" "my_instance-dev" {
 ami      = "ami-0453ec754f44f9a4a" 
 instance_type = "t2.micro" 
 key_name   = "vm-key" 
 security_groups = ["launch-wizard-1"]
 tags = {
  Name    = "vm-dev"
  Environment = "dev"
 }
}