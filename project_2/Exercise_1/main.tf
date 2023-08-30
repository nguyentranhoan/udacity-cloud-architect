
provider "aws" {
    access_key  = "ASIA2WZPFJPSNCYIZZYZ"
    secret_key  = "147NHc+gRVyNRx3QlnlUl2QzdHShQM/118cbB5od"
    token       ="FwoGZXIvYXdzEP7//////////wEaDD/1UIUZCoP0cdQMFSLVAYoz8vl2qGcjr77mxqf6I45N4l6mW31MYhqKZs1TUSSjsCa/cmBKAah7nwU65HbwXTxAdSpuezX3S/WDy6cuFtn/ZMixWd6rpQ7qiG4ZHERx5Ez9KZA9UZazh0BgMHBfNRMCcuODROoQbjr8+kl3ZuVvNTsItK3wvYzQg7Kt2vJP++MtXT9hy2jPr/XAMywF0t+3ofTYVeMUhU+zDUX0erlhKDOMAr8zHDaphU/nNFjgt/ZRwLfHlbwbwtul0s9TIcf8NF/YPQJz3+JgqpTamIMMtWHKDCiRhbunBjItVS9Cn+onFa5W8qBr4PmVaImT72FIAq1PyHZGn4e1JBhJ4LF36Xu+6b3EmkE7"
    region      = "us-east-1"
}

# resource "aws_instance" "Udacity-T2" {
#   ami                       = "ami-0f409bae3775dc8e5" # Amazon Linux 2 AMI (HVM), SSD
#   vpc_security_group_ids    = ["sg-06045d3a6c9146eeb"]
#   subnet_id                 = "subnet-0fda691ae57e1d264"
#   instance_type             = "t2.micro"
#   count                     = 4
# }

# resource "aws_instance" "Udacity-M4" {
#   ami                       = "ami-0f409bae3775dc8e5" # Amazon Linux 2 AMI (HVM), SSD
#   vpc_security_group_ids    = ["sg-06045d3a6c9146eeb"]
#   subnet_id                 = "subnet-0fda691ae57e1d264"
#   instance_type             = "m4.large"
#   count                     = 2
# }