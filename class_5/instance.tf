resource "aws_instance" "output" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}

