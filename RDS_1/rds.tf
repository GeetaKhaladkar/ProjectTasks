resource "aws_db_instance" "demo-mysql-db" {
	identifier		=var.db_identifier
	storage_type		=var.db_storage_type
	allocated_storage	=var.db_storage

	engine			=var.db_engine
	engine_version		=var.db_engine_version
	instance_class		=var.instance_class
	port			=var.instance_port

	db_subnet_group_name	=var.db_subnet_group
	name			=var.db_subnet_group_name
	username		=var.username
	password		=var.password
	parameter_group_name	=var.db_parameter_group_name
	availability_zone	=var.azs
	publicly_accessible	=true	
	deletion_protection	=true
	skip_final_snapshot	=true

	tags	={
		    name ="Demo MySql RDS Instance"

		 }
}