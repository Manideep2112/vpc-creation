resource "aws_vpc" "mydefault" {
cidr_block ="${var.cidr_block}"
enable_dns_hostnames = true
tags = {
Name = var.vpc_name
owner = var.vpc_owner
environment = var.vpc_environment
}
}

resource "aws_internet_gateway" "myigw" {
vpc_id = "${aws_vpc.mydefault.id}"
tags = {
 Name = "${var.vpc_name}-igw"
}
}