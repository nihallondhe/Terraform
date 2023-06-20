resource "aws_instance" "instance" {
  ami  = "ami-08e5424edfe926b43"
  instance_type = "t2.micro"
  key_name = "test-demo"

  tags = {
    Name = "Terraform-instance"
  }

  provisioner "file" {
    source      = "/home/ubuntu/tf-practis/ec2/bash.sh"
    destination = "/home/ubuntu/bash.sh"
  }
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("/home/ubuntu/tf-practis/ec2/test-demo.pem")
    host     = self.public_ip
  }
   provisioner "remote-exec" {
    inline = [
      "cd /home/ubuntu/",
      "sudo chmod 700 bash.sh",
      "sudo ./bash.sh"
    ]
  }

}
