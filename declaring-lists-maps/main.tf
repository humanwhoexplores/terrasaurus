// how to make a list in terraform
variable "list" {
  type = list
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

// how to make a map in terraform
variable "map" {
  type = map 
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    ap-south-1 = "t2.small"
  }
}