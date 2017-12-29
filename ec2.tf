variable "key" {}
variable "sec" {}

provider "aws" {
    access_key = "${var.key}"
    secret_key = "${var.sec}"
    region = "us-east-2"
}
resource "aws_instance" "web" {
  ami           = "ami-82f4dae7"
  instance_type = "t2.micro"
  key_name="yogeshb"
  tags {
    Name = "HelloWorldNew"
  }
}
