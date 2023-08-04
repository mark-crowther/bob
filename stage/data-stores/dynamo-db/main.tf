provider "aws" {
	region	= "eu-west-2"


}

resource "aws_dynamodb_table" "example_table" {
	name 		= "movies"
	billing_mode	= "PROVISIONED"
	read_capacity	= 10
	write_capacity	= 10
	hash_key	= "Title"
	range_key	= "Director"

	attribute {
		name 	= "Title"
		type 	= "S"
	}

	attribute {
		name	= "Director"
		type 	= "S"
	}
	
	attribute {
		name	= "Year_of_Release"
		type	= "N"
	}
	
	ttl {
		attribute_name 	= "TimeToExist"
		enabled 	= false
	}

	global_secondary_index {
		name		= "DirectorIndex"
		hash_key	= "Director"
		range_key	= "Year_of_Release"
		write_capacity	= 10
		read_capacity	= 10
		projection_type	= "INCLUDE"
		non_key_attributes	= ["Title"]
	}

	tags = {
		Name	= "dynamodb-table-1"
		Environment	 = "Staging"
	}
}

