 Error: Error creating DB Cluster Parameter Group: InvalidParameterValue: ParameterGroupFamily 5.7.mysql_aurora.2.10.0 is not a valid parameter group family
│       status code: 400, request id: ae88076a-3678-452f-bcd4-f3e03e15d2da
│
│   with aws_rds_cluster_parameter_group.main[0],
│   on aurora.tf line 323, in resource "aws_rds_cluster_parameter_group" "main":
│  323: resource "aws_rds_cluster_parameter_group" "main" {
│
╵
╷
│ Error: Error creating DB Parameter Group: InvalidParameterValue: ParameterGroupFamily 5.7.mysql_aurora.2.10.0 is not a valid parameter group family
│       status code: 400, request id: 20117ed4-1ff7-416c-a7b4-646ea20b49f0
│
│   with aws_db_parameter_group.main[0],
│   on aurora.tf line 346, in resource "aws_db_parameter_group" "main":
│  346: resource "aws_db_parameter_group" "main" {




****showing this error
