provider "aws" {
	region 	= "eu-west-2"
}

resource "aws_s3_bucket" "terraform_state_kajsdhfasdfaskldfrlkaj" {
	bucket	= "terraform-kajsdhfasdfaskldfrlkaj"
	
	lifecycle {
		prevent_destroy = true
	}
}

resource "aws_s3_bucket_versioning" "terraform-state-versioning" {
	bucket 				= aws_s3_bucket.terraform_state_kajsdhfasdfaskldfrlkaj.id
	versioning_configuration {
		status 			= "Enabled"
	}	
}
