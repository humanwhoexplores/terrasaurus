provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4JD735HXBR2TE5ET"
  secret_key = "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"
}

variable "list" {
  type = list
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "map" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    ap-south-1 = "t2.small"
  }
}

resource "aws_instance" "test_ec2_1" {
    ami = "ami-082b5a644766e0e6f"
    instance_type = var.list[2]
}

resource "aws_instance" "test_ec2_2" {
    ami = "ami-082b5a644766e0e6f"
    instance_type = var.map["ap-south-1"]
}