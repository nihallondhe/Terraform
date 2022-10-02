resource "aws_security_group" "securitygroupsbyterraform"{
    name = "terraformsec"
    description = "this security_groups will attach to ec2 instance"
    vpc_id = "vpc-0da84a909871cdcdd"


    ingress {
        description = "Enabling inbound rules"
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]
    }

     egress {
        description = "Enabling outbound rules"
        from_port = 8080
        to_port = 9980
        protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]
    }

    tags = {
        Name = "Tasting terraform"
    }
}
