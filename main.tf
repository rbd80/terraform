provider "aws" {
  region = "us-east-1"
  profile = "terraform_svc"
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_instance" "example" {
  ami = "ami-40d28157"
  instance_type = "t2.micro"
  tags {
    Name = "terraform-example"
  }
}