
provider "aws" {
	region = "eu-west-2"	
}

resource "aws_db_instance" "example-mysql" {
	engine			= "mysql"
	allocated_storage	= 10
	instance_class		= "db.t2.micro"
	name			= "example-database"
	username		= "admin"
	password		= "${var.db_password}"
}
	



