terraform {
        backend "s3" {
                bucket  = "terraform-kajsdhfasdfaskldfrlkaj"
                key     = "state/linux/terraform.tfstate"
                region  = "eu-west-2"
        }
}

provider "aws" {
	region = "eu-west-2"
}

resource "aws_instance" "linux1" {
	ami			= "ami-05237751dd2cc66d6"
	instance_type		= "t2.micro"
	
	tags 			= {
		Name = "Linux1"	
	}
}
