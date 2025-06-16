# DevOps Challenge q6


## Terraform Exercise 1: Create an AWS S3 Bucket

### Objective

Your task is to write a Terraform script that does the following:

- **Step 1**: Create access keys in AWS.

- **Step 2**: Export these access keys in your console

- **Step 3**: Create an AWS S3 bucket named `tf-test-bucket-yourname`.

- **Step 4**: Enable versioning on the S3 bucket.

- **Step 5**: Create a folder within that S3 bucket and name it `uploads`.

### Notes

- Make sure you save your Terraform script as `s3_bucket.tf` in the directory `/home/ubuntu/2023-terraform-s3-creation`.

- Run `terraform apply` to ensure your Terraform script executes without errors.

- You have AWS credentials set up in your environment.

---

## Terraform Exercise 2: Set up a VPC

### Objective

Write a Terraform script to set up a Virtual Private Cloud (VPC) in AWS with the following:

- **Step 1**: Create a VPC with CIDR block `10.0.0.0/16`.

- **Step 2**: Create a subnet in that VPC with CIDR block `10.0.1.0/24`.

- **Step 3**: Attach an internet gateway to the VPC.

### Notes

- Save your Terraform script in a file named `aws_vpc.tf` in the directory `/home/ubuntu/2023-terraform-vpc-setup`.

- Make sure you run `terraform init` and `terraform apply` to validate that the script works.

- AWS credentials are assumed to be configured.

---

## Terraform Exercise 3: Managing EC2 Instances

### Objective

Your objective is to create a Terraform script that automates the following:

- **Step 1**: Launch an EC2 instance with type `t2.micro`.

- **Step 2**: Make sure to use an Amazon Linux 2 AMI.

- **Step 3**: Tag the instance with "Environment: Dev".

### Notes

- Your Terraform script should be saved as `ec2_instance.tf` in the directory `/home/ubuntu/terraform-tech-vault`.

- Ensure to run `terraform init` and `terraform apply` to verify your script.

- AWS credentials should be available in your environment.

-----------------------------------------------------------------




