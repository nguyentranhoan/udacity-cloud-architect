
provider "aws" {
    access_key  = "ASIA2WZPFJPSJ7QPSQ3W"
    secret_key  = "yx3MEPBf+p7Ovrju2a/mTZ0zXc82rGpF1WwPQO6O"
    token       = "FwoGZXIvYXdzEAQaDJLNV2MvAd3L11LT0CLVARb9wW96G+dT2Y/0V9cLjmAKy9ZmOtdGGah1rrVOJgdyshnqVIKWwZTgi9sBn210FIB109O/nJs4ae702guU8GcN7oVaY2Fk7XcsJgjC7ebpinllpFzzlKZbDZyIXHdeTHY3G5XTNtOOdAMCmFB4un7eMdbIKd8ZbWontrd2MCecRC2cJDcUSsT55KWv1N0cRWmWuqcAgKeReyOlEHhRTZvSnQOxQua88jQR2nYOX08DEUxHv8n1cipELYysCKN3OsyguY4UmLSFcaBe+6miOi/BUvx6JyjJrLynBjItoP7VGXyXjrZvtJTZuPb0x49KduLozodGhPDlF4WkZWTKtbnu4ysjn7vxC/FP"
    region      = "us-east-1"
}

# resource "aws_instance" "Udacity-T2" {
#   ami                       = "ami-0f409bae3775dc8e5" # Amazon Linux 2 AMI (HVM), SSD
#   vpc_security_group_ids    = ["sg-06045d3a6c9146eeb"]
#   subnet_id                 = "subnet-0fda691ae57e1d264"
#   instance_type             = "t2.micro"
#   count                     = 4
#   tags                      = {
#         "Name" = "Udacity T2"
#         } 
#   tags_all                  = {
#         "Name" = "Udacity T2"
#         }
# }

# resource "aws_instance" "Udacity-M4" {
#   ami                       = "ami-0f409bae3775dc8e5" # Amazon Linux 2 AMI (HVM), SSD
#   vpc_security_group_ids    = ["sg-06045d3a6c9146eeb"]
#   subnet_id                 = "subnet-0fda691ae57e1d264"
#   instance_type             = "m4.large"
#   count                     = 2
#   tags                      = {
#         "Name" = "Udacity M4"
#         } 
#   tags_all                  = {
#         "Name" = "Udacity M4"
#         }
# }