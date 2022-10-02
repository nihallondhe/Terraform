output "awsec2instance"{
    description = "The public ip address of ec2 instance"
    value = "${aws_instance.AWSEC2Instance.public_ip}
}

output "awsec2instance2"{
    description = "The private ip address of ec2 instance"
      value = "${aws_instance.AWSEC2Instance.private_ip}
}