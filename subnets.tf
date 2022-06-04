resource "aws_subnet" "subnet1_public" {
vpc_id = "${aws_vpc.mydefault.id}"
cidr_block = "${var.public_subnet1_cidr}"
availability_zone = "ap-south-1a"
tags = {
 Name = "${var.vpc_name}-public-subnet1"
}

depends_on = [
aws_internet_gateway.myigw
]
}

resource "aws_subnet" "subnet2_public" {
vpc_id = "${aws_vpc.mydefault.id}"
cidr_block = "${var.public_subnet2_cidr}"
availability_zone = "ap-south-1b"
tags = {
    Name = "${var.vpc_name}-public-subnet2"
}

depends_on = [
aws_subnet.subnet1_public
]
}

resource "aws_subnet" "subnet3_public" {
vpc_id = "${aws_vpc.mydefault.id}"
cidr_block = "${var.public_subnet3_cidr}"
availability_zone = "ap-south-1c"
tags = {
    Name = "${var.vpc_name}-public-subnet3"
}

depends_on = [
aws_subnet.subnet2_public
]
}