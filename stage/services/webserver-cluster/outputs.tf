output "port" {
	value 	= "${var.server_port}"
}

output "elb_dns_name" {
	value 	= "${aws_elb.example.dns_name}"
}

output "az" {
	value 	= ["${data.aws_availability_zones.all.names.0}"]
}

