#main.tf
#defining the provider as aws
provider "aws" {
    region     = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    token      = "${var.session_token}"
}

#create a RDS Database Instance
resource "aws_db_instance" "myinstance" {
  engine               = "mysql"
  identifier           = "myrdsinstance"
  allocated_storage    =  20
  engine_version       = "8.0.35"
  instance_class       = "db.t3.micro"
  username             = "sotto"
  password             = "senhasupersegura"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible =  true
}