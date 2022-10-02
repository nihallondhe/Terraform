resource "aws_instance" "AWSEC2Instance" {
    count = "${var.NOofInst}"
    ami = "${var.AMI}"
    instance_type = "${var.INStypy}"
    security_groups = ["launch-wizard-1"]
    key_name = "jenkins"
    tag = {
        Name = "Ec2 by seperate"
    }
}