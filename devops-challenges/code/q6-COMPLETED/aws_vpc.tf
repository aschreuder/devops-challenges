# Creating the main VPC
resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "Project VPC"
    }
}

# Creating a private subnet and attaching it to the VPC
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "private subnet"
    }
}

# Creating a internet gateway and attaching it to the VPC
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = "Internet gateway for main VPC"
    }
}