resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-cheemala-reddy"
  acl    = "private"
}
resource "aws_instance" "example" {
  ami           = "ami-072ec8f4ea4a6f2cf"    # Amazon Linux 2 AMI ID (us-east-1)
  instance_type = "t3.small"                 # Change to your desired instance type
  key_name      = "chinni"                   # Change to your key pair name
  subnet_id     = "subnet-05c64e87eccb0ab1e" # Change to your subnet ID
  tags = {
    Name = "ExampleInstance"
  }
}

output "instance_ip_addr" {
  value = aws_instance.example.public_ip
}

