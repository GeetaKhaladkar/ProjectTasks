resource "aws_db_instance" "demo-mysql-db" {
	identifier		="mysqldatabase"
	storage_type		="gp2"
	allocated_storage	=20

	engine			="mysql"
	engine_version		="8.0"
	instance_class		="db.t2.micro"
	port			="3306"

	db_subnet_group_name	="default-vpc-20b2494b"
	name			="demo_rds_123"
	username		=var.username
	password		=var.password
	parameter_group_name	="default.mysql8.0"
	availability_zone	="ap-south-1a"
	publicly_accessible	=true	
	deletion_protection	=true
	skip_final_snapshot	=true

	tags	={
		    name ="Demo MySql RDS Instance"

		 }
}