# Create the EC2 instance
resource "aws_instance" "my_ec2" {
    instance_type = "t2.micro"
    ami = "ami-0f3f13f145e66a0a3"
    vpc_security_group_ids = [aws_security_group.network-security-group.id]
    key_name = aws_key_pair.deployer.id

    tags = {
        Environment = "Dev"
    }
}

# Creating key-pair on AWS
resource "aws_key_pair" "deployer" {
    key_name = "deployer_key"
    public_key = file("~/.ssh/id_rsa.pub")
}

# Create security group to allow traffic from port 22
resource "aws_security_group" "network-security-group" {
    description = "Allow TLS inbound traffic"

    ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
}