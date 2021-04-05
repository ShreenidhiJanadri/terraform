terraform {
  backend "s3" {
    
    bucket         = "backend-for-demo-vpc"
    key            = "global/s3/terraform.tfstate"
    region         = "us-west-2"
  
  }
}
resource "aws_vpc" "exampleVPC" {

  cidr_block           = var.cidr_block
  #enable_dns_hostnames = true
  #enable_dns_support   = true

  tags = {
    Name      = var.vpcname
  
  }

  lifecycle {
   create_before_destroy = true
  }
}


