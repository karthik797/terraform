resource "aws_instance" "output" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command= "echo ${aws_instance.output.private_ip} >> private_ips.txt"
  }
}
output "ip" {
  value =aws_instance.output.public_ip
}
