
provider "aws" {
    access_key = "ASIA2WZPFJPSPSE3H6PT"
    secret_key = "YWz1jFbpz9qhXIc8sqV28Q7c1q0ervKhLc+N+RQt"
    token="FwoGZXIvYXdzELL//////////wEaDMcGSuKJdULtRlNoVyLVAVX7UAr7Kr/jt54+kVxzB9xdZoYsJOndg4ArrQSGgK7EZ4eGtSNIqjVbj9HVO53W3O268u6MlUyVNNfDo60Md5X+Rqsv6u2Sux2yX7And5AoBsi+oGwOaYoyTzVjOVP0Qan6H/SJ+FTZBZSA5kgmqvcVieAJ9vn0N18J0tcjL9e3rbe/FRWl9LKR2pA6C6WACm1wSA7nzYLNcJqt2XzrASzA3kTIXy10JSYBWBZDEkOlD/nvsOlHqYEVaUXoft21CAVPkKUc8Sivy17GsuNiYPW1BsXq8yjRrKqnBjIt7Un735LgT8rC2hV7OpaRKF90Q2/VcknVIj7lqPcgjGhG+Qa1motloyEAsQU/"
    region = "us-east-1"
}

# resource "aws_instance" "Udacity-T2" {
#   ami           = "ami-0f409bae3775dc8e5" # Amazon Linux 2 AMI (HVM), SSD
#   vpc_security_group_ids = ["sg-06045d3a6c9146eeb"]
#   subnet_id = "subnet-0fda691ae57e1d264"
#   instance_type = "t2.micro"
#   count         = 4
# }

# resource "aws_instance" "Udacity-M4" {
#   ami           = "ami-0f409bae3775dc8e5" # Amazon Linux 2 AMI (HVM), SSD
#   vpc_security_group_ids = ["sg-06045d3a6c9146eeb"]
#   subnet_id = "subnet-0fda691ae57e1d264"
#   instance_type = "m4.large"
#   count         = 2
# }