terraform {
        backend "s3" {
                bucket  = "terraform-kajsdhfasdfaskldfrlkaj"
                key     = "state/stage/data-stores/mysql/terraform.tfstate"
                region  = "eu-west-2"
        }
}


provider "aws" {
	region = "eu-west-2"	
}

resource "aws_db_instance" "example-mysql" {
	engine			= "mysql"
	allocated_storage	= 10
	instance_class		= "db.t2.micro"
	identifier		= "example-database"
	username		= "admin"
	password		= "${var.db_password}"
	skip_final_snapshot	= true
}
	



