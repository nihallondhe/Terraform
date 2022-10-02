resource "aws_instance" "AWSEC2Instance" {
    count = "${var.NOofInst}"
    ami = "${var.AMI}"
    instance_type = "${var.INStypy}"
    security_groups = ["launch-wizard-1"]
    key_name = "key_name"
    tag = {
        Name = "Ec2 by seperate terraform"
    }
}

resource "aws_eip" "masseip"{

}

resource "aws_eip_association" "masseip_associate"{
       instance_id = = aws_instance.aws_eip.id
       allocation_id = aws_eip.masseip.id
        
}
