provider "aws" {
	region = "eu-west-2"
}

resource "aws_instance" "EC2_example_1" {
	ami		= "ami-034bcae148c0c5253"
	instance_type	= "t2.micro"

	tags = {
		Name = "Ubuntu_2204_LTS"
	}
}


