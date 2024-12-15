#Declaring AWS Provider and credentials
provider "aws" {
  region     = "us-west-1"
  }
#######################################################
#Creating Production VPC with CIDR: 172.16.0.0/16
resource "aws_vpc" "vpc" {
    cidr_block = "172.16.0.0/16" 
    tags = {
        Name = "J VPC"
    }
}
output "vpcid" {
  value = aws_vpc.vpc.id
}
