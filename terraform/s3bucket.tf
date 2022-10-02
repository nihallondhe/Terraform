resource "aws_s3_bucket" "s3byterraform"{
    bucket = "s3buckettrf"
    acl = "private"
    versioning {
        enabled = true
    }
    
    lifecycle_rule{
        enabled = true
        transistion {
            days = 30
            storage_class = "STANDARD_IA"
        }

        transistion {
            days = 60
            storage_class = "GLACIER"        
        }
        tags = {
            Name = "S3 bucket created by terraform"
        }
    }

}